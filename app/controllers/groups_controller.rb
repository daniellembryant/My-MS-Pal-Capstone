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

  def show
    group = Group.find(params[:id])
    render json: group
  end

  def update
    group = Group.find(params[:id])
    group.name = params[:name] || group.name
    group.summary = params[:summary] || group.summary
    group.location = params[:location] || group.location
    group.image_url = params[:image_url] || group.image_url
    if group.save
      render json: group
    else
      render json: {errors: product.errors.full_messages}
    end
  end

  def destroy
    group = Group.find_by(id: params[:id])
    group.destroy
    render json: {message: "The group was successfully deleted"}
  end
end
