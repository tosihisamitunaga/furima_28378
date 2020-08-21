class DelivaryAddress < ApplicationRecord
    

    with_options presence: true do

        validates :postal_code,  format:{with: /\A\d{3}[-]\d{4}\z/}   
        validates :municipalities 
        validates :address         
        validates :tell,format:{with: /\A\d{11}\z/,  maximum:11}
        validates :ship_from_id
    end       
end
