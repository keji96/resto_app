class FoodItem < ActiveRecord::Base
  has_many :order_items
  has_many :parties, through: :order_items

end
