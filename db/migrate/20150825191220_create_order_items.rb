class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.string :name
      t.string :cusine
      t.integer :price
      t.string :allergens
      t.integer :fooditem_id
      t.integer :parties_id
      t.timestamps
    end
  end
end
