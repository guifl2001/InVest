class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @user_chat = UserChat.find(params[:user_chat])
    @message = Message.new(message_params)
    @message.user_chat = @user_chat
    @message.save
    redirect_to root_path
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
