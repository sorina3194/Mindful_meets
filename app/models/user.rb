class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable

  has_one_attached :photo

  has_many :feedbacks, dependent: :destroy
  has_many :feedbacks_received, class_name: 'Feedback', foreign_key: :target_user_id,dependent: :destroy

  has_many :invitations, dependent: :destroy
  has_many :invitations_received, class_name: 'Invitation', foreign_key: :invitee_id, dependent: :destroy

  has_many :chat_session, through: :invitations, dependent: :destroy

  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

  has_many :invitation_notifications, dependent: :destroy
  has_many :blocked_users, dependent: :destroy
  # Comment this in on Friday

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :username, presence: true
  # validates :age, presence: true
  # validates :biography, presence: true
  # validates :skills, presence: true
  # validates :hobbies, presence: true
  # validates :min_age, presence: true
  # validates :max_age, presence: true
  # validates :city, presence: true
  # validates :music_genres, presence: true
  # validates :book_genres, presence: true
  # validates :movie_genres, presence: true
  # validates :favorite_animal, presence: true
end
