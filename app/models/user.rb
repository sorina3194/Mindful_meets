class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable
  has_one_attached :photo
  has_many :feedbacks
  has_many :feedbacks_received, class_name: 'Feedback', foreign_key: :target_user_id
  has_many :invitations
  has_many :invitations_received, class_name: 'Invitation', foreign_key: :invitee_id
  has_many :chat_session, through: :invitations
  # comment validation out because of conflicts when adding new or changing users.
  # We will add it on FRIDAY before demo!!!!
  # and then again in the next week on the LAST DAY!!!!

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
