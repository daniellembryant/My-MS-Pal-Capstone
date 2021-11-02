class UserGroupsController < ApplicationController
  
  # users can only join a group when logged in.
  before_action :authenticate_user

  def index
    user_groups = UserGroup.all
    render json: user_groups
  end

  def create
    user_group = UserGroup.new(
      user_id: current_user.id,
      group_id: params[:group_id]
    )
    if user_group.save
      render json: user_group.user
    else 
      render json: {errors: user_group.errors.full_messages}, status: :unprocessable_entity
    end
  end

  #users can only leave a group when they are logged in
  def destroy 
    user_group = UserGroup.find_by(group_id: params[:id],user_id:current_user.id)
    if user_group.user_id == current_user.id
      user_group.destroy
      render json: {message: "You have successfully left the group"}
    else
      render json: {message: "You do not have access to this account"}
    end
  end
end
