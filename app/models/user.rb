class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chat_messages
  has_many :chat_room_users

  mount_uploader :img_name, ImgNameUploader

  enum sex: { 男: 0, 女: 1 }
end
