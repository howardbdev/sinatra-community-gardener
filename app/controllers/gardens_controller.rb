class GardensController < ApplicationController

  # index action
  get '/gardens' do
    @gardens = Garden.all
    erb :'/gardens/index'
  end

  # render the new garden form
  get '/gardens/new' do
    redirect_if_not_logged_in
    erb :'/gardens/new'
  end

  post '/gardens' do
   # add code to create a new garden
   # CURRENT SYMPTOMS:
   # 1. I can create a totally empty garden with no attributes!  DONE!
   # 2. No association happens on garden creation # minimize the lines of code ?
   #  ^^ let's use AR methods
   if params[:garden][:name] != "" && params[:garden][:location] != "" && params[:garden][:garden_type] != ""
     @garden = Garden.create(params[:garden])
     # UserGarden.create(user_id: current_user.id, garden: @garden)
     current_user.gardens << @garden
     flash[:notice] = "You have successfully created your new garden!"
     redirect "/gardens/#{@garden.id}"
   else
     # failure
     # ADD A FLASH MESSAGE
     # REDIRECT OR RENDER (render in the future with a refactor to load the info a user has submitted - we would have to to add values)
     flash[:warning] = "Must provide a name, location, and garden type to creat a new garden."
     redirect '/gardens/new'
   end

  end

  get '/gardens/:id/edit' do
    @garden = Garden.find(params[:id])
    redirect_if_not_authorized(@garden)
    erb :'/gardens/edit'
  end

  patch '/gardens/:id' do
    @garden = Garden.find(params[:id])
    redirect_if_not_authorized(@garden)
    @garden.update(params[:garden])
    flash[:notice] = "Successfully updated #{@garden.name}"
    redirect "/gardens/#{@garden.id}"
  end

  get '/gardens/:id' do
    @garden = Garden.find(params[:id])
    # now what?
    erb :'/gardens/show'
  end

  delete '/gardens/:id' do
    garden = Garden.find(params[:id])
    redirect_if_not_authorized(garden)
    garden.destroy
    flash[:warning] = "Successfully deleted #{garden.name}!"
    redirect '/gardens'
  end

end
