require 'rails_helper'

RSpec.describe DelivaryAddress, type: :model do
    describe '#create'do
        before do
        @delivary_address = FactoryBot.build(:delivary_address)
        end


    it"配送先の郵便番号が必要なこと"do
          @delivary_address.postal_code = nil
          @delivary_address.valid?
          expect(@delivary_address.errors.full_messages).to include("Postal code can't be blank")
        end
    
        it"配送先の都道府県が必要なこと"do
        @delivary_address.ship_from = nil
        @delivary_address.valid?
          expect(@delivary_address.errors.full_messages).to include("Postal code is invalid")
        end
    
        it"配送先の市町村が必要なこと"do
        @delivary_address.municipalities = nil
        @delivary_address.valid?
          expect(@delivary_address.errors.full_messages).to include("Postal code is invalid")
        end

        it"配送先の番地が必要なこと"do
        @delivary_address.address = nil
        @delivary_address.valid?
          expect(@delivary_address.errors.full_messages).to include("Address can't be blank")
        end

        it"配送先の電話番号が必要なこと"do
        @delivary_address.tell = nil
        @delivary_address.valid?
          expect(@delivary_address.errors.full_messages).to include("Tell can't be blank")
        end
    
        it"郵便番号にはハイフンが必要であること"do
        @delivary_address.postal_code = 1234567
        @delivary_address.valid?
          expect(@delivary_address.errors.full_messages).to include("Postal code is invalid")
        end
    
        it"電話番号にはハイフンが入らなくて１１桁以内であること"do
        @delivary_address.tell = 000000-000000000
        @delivary_address.valid?
          expect(@delivary_address.errors.full_messages).to include("Tell is invalid")    
        end
    end
end
