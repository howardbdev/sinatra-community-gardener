class GardensController < ApplicationController

  # index action
  get '/gardens' do
    @gardens = Garden.all
    erb :'/gardens/index'
  end

  # render the new garden form
  get '/gardens/new' do
    erb :'/gardens/new'
  end

  post '/gardens' do
   # add code to create a new garden
   @garden = Garden.create(params[:garden])
   redirect "/gardens/#{@garden.id}"
  end

  get '/gardens/:id/edit' do
    @garden = Garden.find(params[:id])
    erb :'/gardens/edit'
  end

  patch '/gardens/:id' do
    @garden = Garden.find(params[:id])
    @garden.update(params[:garden])
    redirect "/gardens/#{@garden.id}"
  end

  get '/gardens/:id' do
    @garden = Garden.find(params[:id])
    # now what?
    erb :'/gardens/show'
  end

  delete '/gardens/:id' do
    Garden.find(params[:id]).destroy
    redirect '/gardens'
  end

end
