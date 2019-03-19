class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "lame string that will soon be hexed"
    set :views, "app/views"
    set :public_folder, "public"
  end

  get '/' do
    erb :welcome
  end

  helpers do
    def current_user
      User.find_by(id: session[:user_id])
    end

    def logged_in?
      !!current_user
    end

    # helper method to redirect if a user is not logged in
    def redirect_if_not_logged_in
      if !logged_in?
        redirect '/'
      end
    end

    # helper to redirect if a user is not authorized to edit a garden
    def redirect_if_not_authorized(garden)
      if !logged_in? || !current_user.gardens.include?(garden)
        redirect '/gardens'
      end
    end
  end

end
