class UsersController < ApplicationController

  # show
  get "/users/:slug" do
    # 1. find the current user <-- helper or no?
    @user = User.find_by_slug(params[:slug])
    # 2. render the show page
    erb :"/users/show"
  end

  # create
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
      # do we want to sign in????? YES
      # what is logging in??
      # it means we have a key-value pair on the session hash that
      # holds an identifier, usually a user's id
      session[:user_id] = user.id
      redirect "/users/#{user.slug}"
    end
  end

  # edit
  # delete ?? <-- delete myself? admin priviledges ??
end
