class ChatroomUsersController < ApplicationController
  before_action :set_chatroom
  before_action :authenticate_user!

  def create
    @chatroom_user = @chatroom.chatroom_users.where(user_id: current_user.id).first_or_create
    redirect_to @chatroom
  end

  def destroy
    @chatroom_user = @chatroom.chatroom_users.where(user_id: current_user.id).destroy_all
    redirect_to chatrooms_path
  end

  # a opção por um .where e .destroy_all é melhor do que .find e .destroy respectivamente pois caso não se
  # encontre nada, o app nao vai crashar.

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
  end
end
