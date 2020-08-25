class DelivaryAddress < ApplicationRecord
    

    with_options presence: true do
        postal_code = {with: /\A\d{3}[-]\d{4}\z/}
        tell = {with: /\A\d{11}\z/,  maximum:11}

        validates :postal_code,  format:  postal_code
        validates :municipalities 
        validates :address         
        validates :tell,format: tell
        validates :ship_from_id
    end       
end