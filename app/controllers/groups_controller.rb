class GroupsController < ApplicationController
  before_action :authenticate_user, except: [:index]
  before_action :authenticate_admin, except: [:index, :create, :show]

  def index
    groups = Group.all
    render json: groups
  end

  def create  
    group = Group.new(
      name: params[:name],
      summary: params[:summary],
      location: params[:location],
      image_url: params[:image_url]
    )
    if group.save
      render json: group
     else 
       render json: group.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    group = Group.find(params[:id])
    render json: group
  end

  #Only group admin should be able to update a group when logged in 
  def update 
    if current_user && current_user.admin
      group = Group.find(params[:id])
      group.name = params[:name] || group.name
      group.summary = params[:summary] || group.summary
      group.location = params[:location] || group.location
      group.image_url = params[:image_url] || group.image_url
      group.save
      render json: group
    else
      render json: {errors: group.errors.full_messages}
    end
  end

  #only group admin can delete a group when logged in
  #When a group get's destroyed, users should no longer be assigned to that group
  def destroy
    if current_user && current_user.admin
      group = Group.find_by(id: params[:id])
      group.destroy
      render json: {message: "The group was successfully deleted"}
    else
      render json: {errors: group.errors.full_messages}
    end
   
  end
end
