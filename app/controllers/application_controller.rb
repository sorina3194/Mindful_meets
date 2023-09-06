class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_meta_tags

  def configure_permitted_parameters

    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :age, :username, :biography, :min_age, :max_age, :city, :skills, :hobbies, :music_genres, :book_genres, :movie_genres, :favorite_animal])
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :age, :username, :biography, :min_age, :max_age, :city, :skills, :hobbies, :music_genres, :book_genres, :movie_genres, :favorite_animal])
  end

  def set_meta_tags
    set_meta_tags site: "mindful meets.",
                  description: "connect like-minded people.",
                  keywords: "mindful, friends, people, happiness, social anxiety",
                  reverse: true
  end
end
