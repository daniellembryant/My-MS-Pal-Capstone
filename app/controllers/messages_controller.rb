class MessagesController < ApplicationController

  def create
    message = Message.new(
     user_id: params[:user_id],
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
    message = Message.find_by(id: params[:id])
    message.destroy
    render json: {message: "Message successfully deleted"}
  end
end
