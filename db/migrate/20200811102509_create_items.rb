class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
        t.integer :price,            nill: false
        t.references  :user,         foreign_key: true
        t.string  :product_name,     nill: false
        t.integer :delivery_fee_id,     nill: false
        t.integer :shipping_date_id,    nill: false
        t.text    :coments,          nill: false
        t.integer :ship_from_id,        nill: false
        t.integer :categori_id,        nill: false
        t.integer :product_status_id,   nill: false
        
        t.timestamps
    end
  end
end
