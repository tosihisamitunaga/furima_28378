class Item < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions

    belongs_to_active_hash :categori
    belongs_to_active_hash :shipping_date
    belongs_to_active_hash :delivery_fee
    belongs_to_active_hash :ship_from
    belongs_to_active_hash :product_status

    has_one :item_purchase
    belongs_to :user
    has_one_attached :image
    

    with_options presence: true do

        validates  :price 
        validates  :image 
        validates  :product_name 
        validates  :delivery_fee_id
        validates  :shipping_date_id 
        validates  :coments
        validates  :ship_from_id 
        validates  :categori_id
        validates  :product_status_id 
        
    end 

    validates_inclusion_of :price, in:300..9_999_999
    

   

end
