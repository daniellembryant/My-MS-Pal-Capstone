class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]


  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      age_group: params[:age_group],
      password_confirmation: params[:password_confirmation],
      location: params[:location],
      diagnosis_date: params[:diagnosis_date],
      image_url: params[:image_url],
    )
    if user.save
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
   #users should only be able to see their own account when logged in. 
  def show
    user = User.find(params[:id])
    if user.id == current_user.id
      render json: user
    else
      render json: {errors: user.errors.full_messages},
      status: 401

    end
  end

  #users should only be able to update their own info. when logged in. 
  def update
    user = User.find(params[:id])
    if user == current_user
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.age_group = params[:age_group] || user.age_group
    if params[:password] && params[:password_confirmation]
      user.password = params[:password] 
      user.password_confirmation = params[:password_confirmation] 
      
    end
    user.location = params[:location] || user.location
    user.diagnosis_date = params[:diagnosis_date] || user.diagnosis_date
    user.image_url = params[:image_url] || user.image_url
    user.save
    render json: user
    else
      render json: {message: "You do not have access to edit this account"}
    end
  end

#users should only be able to delete their info. when logged in. 
  def destroy
    user = User.find_by(id: params[:id])
    if user.id == current_user.id
      user.destroy 
      render json: {message: "Your account was successfully deleted"}
    else
      render json: {message: "You do not have access to delete this account"}
    end
  end
end
