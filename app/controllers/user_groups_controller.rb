class UserGroupsController < ApplicationController

  # users can only join a group when logged in.
  def create

    user_group = UserGroup.new(
      user_id: params[:user_id],
      group_id: params[:group_id]
    )
    if user_group.save
      render json: user_group
    else 
      render json: {errors: user_group.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    user_group = UserGroup.find_by(id: params[:id])
    user_group.destroy
    render json: {message: "You have successfully left the group"}
    
  end

end
