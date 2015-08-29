class CreateItemorders < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
    t.integer :amount
    t.integer :food_item_id
    t.integer :party_id
    t.timestamps
  end
 end
end
