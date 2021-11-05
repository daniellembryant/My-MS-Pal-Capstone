class NotificationsController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_admin

  def create
    notification = Notification.new(
      user_id: current_user.id,
      group_id: params[:group_id],
      body: params[:body]
    )
    if notification.save
      render json: notification
    else
      render json: notification.errors.full_messages, status: :unprocessable_entity
    end
  end
  def destroy
    notification = Notification.find(params[:id])
    if current_user.id == notification.user_id || current_user.admin
      notification.destroy
      render json: {message: "Notification successfully deleted"}
    else
      render json: {errors: notification.errors.full_messages}
    end
  end
end
