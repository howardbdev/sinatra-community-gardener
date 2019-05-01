class PlantsController < ApplicationController
  get '/gardens/:garden_id/plants/new' do
    redirect_if_not_logged_in
    @garden = Garden.find(params[:garden_id])
    erb :'/plants/new'
  end

  post '/gardens/:garden_id/plants' do
    redirect_if_not_logged_in
    @garden = Garden.find(params[:garden_id])

    if !params[:plant][:plant_type].empty? && params[:plant][:growth_period] != "" && params[:plant][:description] != "" && !params[:quantity].empty?
      params[:quantity].to_i.times {@garden.plants.create(params[:plant])}


      flash[:notice] = "You have planted #{params[:quantity]} #{params[:plant][:plant_type]} plants"
      redirect "/gardens/#{@garden.id}"
    else
      # tell the user about failure
      flash[:warning] = "You failed to create #{params[:quantity]} #{params[:plant][:plant_type].empty? ? "plant" : params[:plant][:plant_type]}s... you must have at least plant type, description, and growth period"
      # redirect/render to the new form again
      redirect "/gardens/#{@garden.id}/plants/new"
    end
  end
end
