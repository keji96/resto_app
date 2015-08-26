class ItemOrdersController < ApplicationController

  require './models/orderitem'


  get '/' do
    @orderitems = OrderItem.all
      erb :'item_orders/index'
  end

  get '/new' do
    erb :'item_orders/new'
  end

  post '/' do
    OrderItem.create(params[:fooditem])
    redirect '/orderitems'
  end



end
