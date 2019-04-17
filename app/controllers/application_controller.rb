require_relative "./concerns/helpers"
class ApplicationController < Sinatra::Base

  include Helpers

  configure do
    enable :sessions
    set :session_secret, "lame string that will soon be hexed"
    set :views, "app/views"
    set :public_folder, "public"
    register Sinatra::Flash
  end

  get '/' do
    erb :welcome
  end


end
