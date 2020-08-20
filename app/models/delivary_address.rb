class DelivaryAddress < ApplicationRecord
    # belongs_to :item_purchase

    with_options presence: true do

        validates :postal_code,  format:{with: /\A\d{3}[-]\d{4}\z/}   
        validates :municipalities 
        validates :address         
        validates :tell,format:{with: /\A\d{11}\z/,  maximum:11}
    end       
end
