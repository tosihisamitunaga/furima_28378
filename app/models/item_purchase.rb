class ItemPurchase < ApplicationRecord
    belongs_to :user
    belongs_to :item
    #belongs_to :delivary_address
end
