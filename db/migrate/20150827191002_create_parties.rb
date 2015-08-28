class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
        t.integer :table_number
        t.integer :num_guests
        t.string :paid
        t.timestamps
      end
  end
end
