class SessionsController < ApplicationController
  get '/signup' do
    erb :'/sessions/signup'
  end

  get '/login' do
    erb :'/sessions/login'
  end

  post '/login' do
    # What steps do I need to take?

    # 1. find the user
    @user = User.find_by(email: params[:user][:email])
    # 2. validate login info
    if @user && @user.authenticate(params[:user][:password])
      # success
      # 3s. Set session[:user_id] to user's id
      session[:user_id] = @user.id
      redirect "/users/#{@user.slug}"
    else
      # failure
      # 3f.
      # redirect '/login'
      # might we want to render/??  under what circumstances?
      # what about telling the user that something went wrong?
      # ^^ how would we tell the user????
      erb :'/sessions/login'
    end
  end

  get '/logout' do # should this be a get request??????

  end
end
