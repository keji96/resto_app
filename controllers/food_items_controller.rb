class FoodItemsController < ApplicationController


require './models/fooditem'

#show all Food Items
  get '/' do
    @fooditems = FoodItem.all
    erb :'food_items/index'
  end

#form for creating new Food item
get '/new' do
  erb :'food_items/new'
end

#creating new food item
post '/' do
  FoodItem.create(params[:fooditem])
  redirect '/fooditems'
end

#Show Individual Food Item
get '/:id' do
  @fooditems = FoodItem.find(params[:id])
  erb :'/food_items/show'
end


#Form for editing a Food Item
get '/:id/edit' do
  @fooditems = FoodItem.find(params[:id])
  erb :'food_items/edit'
end

#Updating an Food Item
put '/:id' do
  fooditem = FoodItem.find(params[:id])
  fooditem.update(params[:fooditem])
  redirect "/fooditems"
end

delete '/:id' do
    fooditem = FoodItem.find(params[:id])
    fooditem.destroy()
    redirect '/fooditems'
  end


end
