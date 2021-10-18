class GroupsController < ApplicationController

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
end
