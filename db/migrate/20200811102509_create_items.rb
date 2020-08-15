class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
        t.integer :price,            nill: false
        t.references  :user,         foreign_key: true
        t.string  :product_name,     nill: false
        t.integer :delivery_fee,     nill: false
        t.integer :shipping_date,    nill: false
        t.text    :coments,          nill: false
        t.integer :ship_from,        nill: false
        t.integer :categori ,        nill: false
        t.integer :product_status,   nill: false
        t.timestamps
    end
  end
end
