require 'bundler'
Bundler.require()

#Models



#controllers
require './controllers/application_controller'
require './controllers/welcome_controller'
require './controllers/food_items_controller'
require './controllers/parties_controller'
require './controllers/item_orders_controller'

#routing
map('/fooditems'){ run FoodItemsController}
map('/parties'){run PartiesController}
map('/orderitems'){run ItemOrdersController}
map('/'){run WelcomeController}
