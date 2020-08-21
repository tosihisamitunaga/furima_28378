require 'rails_helper'

RSpec.describe ItemPurchase, type: :model do
  describe '#create'do
        before do
        @item_purchase = FactoryBot.build(:item_purchase)
        end

        it"item_idがあること"do
          @item_purchase.item_id = nil
          @item_purchase.valid?
          expect(@item_purchase.errors.full_messages).to include("User must exist")
        end
    
        it"user_idがあること"do
          @item_purchase.user_id = nil
          @item_purchase.valid?
          expect(@item_purchase.errors.full_messages).to include("Item must exist")
        end
    
        

  end 
end


