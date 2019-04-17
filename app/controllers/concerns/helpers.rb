module Helpers
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  # helper method to redirect if a user is not logged in
  def redirect_if_not_logged_in
    if !logged_in?
      flash[:warning] = "You must be logged in to view that page."
      redirect '/'
    end
  end

  # helper to redirect if a user is not authorized to edit a garden
  def redirect_if_not_authorized(garden)
    if !logged_in? || !current_user.gardens.include?(garden)
      flash[:warning] = "You are not authorized to edit or delete that garden!"
      redirect '/gardens'
    end
  end

  def validate_email_uniqueness(email)
    if User.email_taken?(email)
      flash[:warning] = "That email address is already taken.  Please use a different one!"
      redirect '/signup'
    end
  end
end
