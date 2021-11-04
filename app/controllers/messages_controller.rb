class MessagesController < ApplicationController
  
  before_action :authenticate_user
  # before_action :authenticate_admin, except: [:create]

  def create
    message = Message.new(
     user_id: current_user.id,
     group_id: params[:group_id],
     body: params[:body]
    )
    if message.save
      render json: message
    else
      render json: message.errors.full_messages, status: :unprocessable_entity
    end  
  end

  def destroy
    message = Message.find(params[:id])
    if current_user.id == message.user_id || current_user.admin
      message.destroy
      render json: {message: "Message successfully deleted"}
    else
      render json: {errors: message.errors.full_messages}
    end
  end
end
