require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#create'do
  before do
    @item = FactoryBot.build(:item)
  end
  
  it'画像が1マイ必須である'do
      @item.image = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end

    it'商品名が必須であること'do
      @item.product_name = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Product name can't be blank")
    end

    it'商品の説明が必須であること'do
      @item.coments = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Coments can't be blank")
    end

    it'カテゴリーの情報が必須であること'do
      @item.categori_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Categori can't be blank")
    end

    it'商品の状態について情報が必須であること'do
    @item.product_status_id = nil
    @item.valid?
      expect(@item.errors.full_messages).to include("Product status can't be blank")
    end

    it'配送料の負担についての情報が必須であること'do
    @item.delivery_fee_id = nil
    @item.valid?
      expect(@item.errors.full_messages).to include("Delivery fee can't be blank")
    end

    it'配送元の地域についての情報が必須であること'do
    @item.ship_from_id = nil
    @item.valid?
      expect(@item.errors.full_messages).to include("Ship from can't be blank")
    end

    it'発送までの日数についての情報が必須であること'do
    @item.shipping_date_id = nil
    @item.valid?
      expect(@item.errors.full_messages).to include("Shipping date can't be blank")
    end

    it'価格の範囲が¥300~¥9,999,999の間であること'do
      @item.price = 100
      @item.valid?
      expect(@item.errors.full_messages).to include("Price is not included in the list")
    end

    it'価格が9999999以上のときに保存できないパターン'do
      @item.price = 1000000000000000000000
      @item.valid?
      expect(@item.errors.full_messages).to include()
    end

    
  end

end
