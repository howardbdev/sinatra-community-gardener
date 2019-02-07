class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "lame string that will soon be hexed"
    set :views, "app/views"
    set :public_folder, "public"
  end

  get '/' do
    current_user.inspect
  end

  helpers do
    def current_user
      User.find_by(id: session[:user_id])
    end

    def logged_in?
      !!current_user
    end
  end

end
