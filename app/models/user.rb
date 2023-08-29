class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable
  has_one_attached :photo
  has_many :feedbacks
  has_many :feedbacks_received, class_name: 'Feedback', foreign_key: :target_user_id
end
