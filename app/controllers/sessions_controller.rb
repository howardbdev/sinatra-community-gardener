class SessionsController < ApplicationController
  get '/signup' do
    erb :'/sessions/signup'
  end

  post '/users' do
    # what happens here??
    # 1. validate params
    if params[:user][:name].empty? || params[:user][:password].empty? || params[:user][:email].empty?
      redirect '/signup'
    else
      # 2. create user
      # 3. log user in
      # 4. REDIRECT NOT RENDER TO ???
      user = User.create(params[:user])
      redirect "/users/hotdogs"
    end
  end
end
