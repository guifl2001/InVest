class UserChatsController < ApplicationController
  def create
    @chat = Chat.find(params[:chat_id])
    @user_chat = UserChat.new
    @user_chat.chat = @chat
    @user_chat.user = current_user
    if @user_chat.save
      respond_to do |format|
        format.html { redirect_to curso_path(@chat.curso) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'cursos/show' }
        format.js  # <-- idem
      end
    end
  end
end
