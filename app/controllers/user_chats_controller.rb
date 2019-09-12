class UserChatsController < ApplicationController
  def create
    @chat = Chat.find(params[:chat])
    @user_chat = UserChat.new
    @user_chat.chat = @chat
    @user_chat.user = current_user
    @user_chat.save
  end
end
