class GardensController < ApplicationController

  # index action -- coming soon ;)
  get '/gardens' do

  end

  # render the new garden form
  get '/gardens/new' do
    erb :'/gardens/new'
  end

  post '/gardens' do
   # add code to create a new garden 
  end

end
