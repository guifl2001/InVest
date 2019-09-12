class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @user_chat = UserChat.find(params[:user_chat_id])
    @message = Message.new
    @message.content = params[:content]
    @message.user_chat = @user_chat
    @message.save
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
