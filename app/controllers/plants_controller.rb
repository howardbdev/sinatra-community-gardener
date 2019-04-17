class PlantsController < ApplicationController
  get '/gardens/:garden_id/plants/new' do
    redirect_if_not_logged_in
    @garden = Garden.find(params[:garden_id])
    erb :'/plants/new'
  end

  post '/gardens/:garden_id/plants' do
    redirect_if_not_logged_in
    # make sure the necessary params are available
    # if params[plant_type], etc, != ""
    # else flash warning invalid form and show form again

    # what happens here???
    # 1.  Find the garden from params id
    @garden = Garden.find(params[:garden_id])
    # 2.  Build a plant off that garden
    @plant = @garden.plants.build(params[:plant])
    # 3.  Save the plant
    if @plant.save

    else

    end
    # 4.  Redirect
  end
end
