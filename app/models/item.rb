class Item < ApplicationRecord
    #has_many :item_purchases
    #belongs_to :user, thtough: item_purchases
    has_one_attached :image

    with_options presence: true do

        validates  :price #message: "Price can't be blank", "Price can't be blank","Price Out of setting range"
        validates  :image #message: "Image can't be blank"
        validates  :product_name #message: "Name can't be blank"
        validates  :delivery_fee #message: "Shipping fee status Select"
        validates  :shipping_date #message: "Scheduled delivery Select"
        validates  :coments #message: "Info can't be blank"
        validates  :ship_from #message: "Prefecture Select"
        validates  :categori #message:"Category Select"
        validates  :product_status #"Info can't be Select"
        
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
