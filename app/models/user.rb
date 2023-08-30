class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable
  has_one_attached :photo
  has_many :feedbacks
  has_many :feedbacks_received, class_name: 'Feedback', foreign_key: :target_user_id
  has_many :invitations
  has_many :invitations_received, class_name: 'Invitation', foreign_key: :invitee_id
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :username, presence: true
end
