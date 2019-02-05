class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "lame string that will soon be hexed"
    set :views, "app/views"
    set :public, "public"
  end

  get '/' do
    "hello world"
  end
end
