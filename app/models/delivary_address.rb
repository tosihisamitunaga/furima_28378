class DelivaryAddress < ApplicationRecord
    belongs_to :item_purchase

    with_options presence: true do

        #validates :postal_code,  format:{with: (〒|ZIP：)\d{3}-\d{4}}   
        validates :municipalities 
        validates :address         
        #validates :tell,format:{with: 0[89]0\d{8}},{ maximum:11}
    end       
end
