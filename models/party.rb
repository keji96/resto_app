class Party < ActiveRecord::Base
    has_many :order_items
    has_many :food_items, through: :order_items


    def total
      total_price = 0
      self.food_items.each do |food_item|
        total_price += food_item.price
      end
      total_price
    end


end
