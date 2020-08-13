class Item < ApplicationRecord
    #has_many :item_purchases
    #belongs_to :user, thtough: item_purchases
    has_one_attached :image

    with_options presence: true do

        validates  :price
        validates  :image
        validates  :product_name
        validates  :delivery_fee
        validates  :shipping_date
        validates  :coments
        validates  :ship_from
        validates  :categori 
        validates  :product_status
        
    end 

    with_options numericality: { other_than: 0 } do
        
        validates  :delivery_fee
        validates  :shipping_date
        validates  :ship_from
        validates  :categori 
        validates  :product_status

    end

    validates_inclusion_of :price, in:300..9_999_999




end
