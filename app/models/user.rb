class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users
  # esse through que faz a ligação para que o user tenha várias chatrooms.
  # por isso a chatroomuser é a table join!
  has_many :messages
end
