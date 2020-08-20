class CreateDelivaryAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :delivary_addresses do |t|
      t.string :postal_code     ,null: false 
      t.string :municipalities  ,null: false 
      t.string :address         ,null: false 
      t.string :building_name 
      t.string :tell            ,null: false 
      t.integer :user_id, foreign_key: true     
      t.timestamps
    end
  end
end
