class ItemPurchaseController < ApplicationController
    before_action :redirect_root_path, only: [:show]

    def index
        @item = Item.find(params[:item_id])
        @item_purchase = UserAddress.new
    end


    def create
        @item_purchase = UserAddress.new(item_purchase_params)
        if @item_purchase.save
            redirect_to root_path
        else
            render :index
        end
        # @item_purchase = .new(price: item_purchase_params[:price])
    end

    private
    
    def item_purchase_params
        params.permit(:postal_code, :municipalities, :address, :tell, :building_name, :item_id,).merge(user_id: current_user.id)
    end

    # def item_purchase_params
    #     params.permit(:price, :token)
    # end

    # def pay_item
    #     Payjp.api_key = "sk_test_82d3958bdc2f68ecea98f75b"  # PAY.JPテスト秘密鍵
    #     Payjp::Charge.create(
    #     amount: order_params[:price],  # 商品の値段
    #     card: order_params[:token],    # カードトークン
    #     currency:'jpy'                 # 通貨の種類
    #     )
    # end

    def redirect_root_path
        @item = Item.find(params[:item_id])
        if user_signed_in? && current_user.id == @item.user_id
            # loginしていると動く && 出品者だと動く
            redirect_to root_path
        end
    end
end
