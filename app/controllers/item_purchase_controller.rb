class ItemPurchaseController < ApplicationController
    before_action :redirect_root_path, only: [:index]
    before_action :move_to_index, only:[:index]
    before_action :pachase_redirect, only:[:index]
    before_action :set_item, only: [:create]

    def index
        @item = Item.find(params[:item_id])
        @item_purchase = UserAddress.new
    end


    def create
        @item_purchase = UserAddress.new(item_purchase_params)
        pay_item
        if @item_purchase.save
            redirect_to root_path
        else
            render :index
        end
        
    end

    private
    
    def item_purchase_params 
        params.require(:user_address).permit(:postal_code, :municipalities, :address, :tell, :building_name, :ship_from_id ).merge(user_id: current_user.id, item_id: params[:item_id],token: params[:token])
    end

    def pay_item
        Payjp.api_key = "sk_test_82d3958bdc2f68ecea98f75b"  # PAY.JPテスト秘密鍵
        Payjp::Charge.create(
        amount:@item.price,  # 商品の値段 別の取得方法を試す
        card: params[:token],    # カードトークン 
        currency:'jpy'                 # 通貨の種類
        )
    end

    def redirect_root_path
        @item = Item.find(params[:item_id])
        if user_signed_in? && current_user.id == @item.user_id
            # loginしていると動く && 出品者だと動く
            redirect_to root_path
        end
    end


    def move_to_index
        unless user_signed_in?
            redirect_to new_user_session_path, alert: "ログインしてください"
        end
    end

    def pachase_redirect
        @item = Item.find(params[:item_id])
        if @item.item_purchase 
            redirect_to root_path
        end
    end



    def set_item
        @item = Item.find(params[:item_id])
    end


end
