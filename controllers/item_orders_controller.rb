class ItemOrdersController < ApplicationController

  require './models/orderitem'

#show all the orders
  get '/' do
    @orderitem = OrderItem.all
      erb :'item_orders/index'
  end


#form for creating a new order
  get '/new' do
    @fooditems = FoodItem.all
    @parties = Party.all
    erb :'item_orders/new'
  end

#creating a new order
  post '/' do
    OrderItem.create(params[:oderitem])
    redirect '/orderitems'
  end

  #Show Individual Food Item
  get '/:id' do
    @orderitem = OrderItem.find(params[:id])
    erb :'/item_orders/show'
  end

  #Form for editing an order
  get '/:id/edit' do
    @fooditems = FoodItem.all
    @parties = Party.all
    @orderitem = OrderItem.find(params[:id])
    erb :'item_orders/edit'
  end

    put '/:id' do
      orderitem = OrderItem.find(params[:id])
      orderitem.update(params[:oderitem])
      redirect "/orderitems/#{orderitem.id}"
    end

    delete '/:id' do
      orderitem = OrderItem.find(params[:id])
      orderitem.destroy()
      redirect "/orderitems/"
    end



end
