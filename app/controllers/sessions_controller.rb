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
      # should I render or redirect????!
      # what else here would improve user experience?? (UX) -- a flash message (or any other way we could communicate to the user!)
      redirect '/login'
    end
  end

  get '/logout' do # should this be a get request??????
    session.clear
    redirect '/'
  end
end
