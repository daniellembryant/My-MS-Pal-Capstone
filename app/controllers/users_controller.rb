class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]


  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      age_group: params[:age_group],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      location: params[:location],
      diagnosis_date: params[:diagnosis_date],
      image_url: params[:image_url],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  #users should only be able to update their info. when logged in. 
  def update
    user = User.find(params[:id])
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.age_group = params[:age_group] || user.age_group
    user.password = params[:password] || user.password
    user.password_confirmation = params[:password] || user.password_confirmation
    user.location = params[:location] || user.location
    user.diagnosis_date = params[:diagnosis_date] || user.diagnosis_date
    user.image_url = params[:image_url] || user.image_url
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}
    end
  end
#users should only be able to delete their info. when logged in. 
  def destroy
    user = User.find_by(id: params[:id])
    user.destroy 
    render json: {message: "Your account was successfully deleted"}
  end
end
