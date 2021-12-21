class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :price
      t.references :customer 
      t.references :coffee 
    end
  end
end
