class ItemsController < ApplicationController
        before_action :set_item, only: [:show,:edit]

        #before_action :authenticate_user!, expect: [:index, :show]

    def index
        @items = Item.all.order(created_at: "DESC")
        
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
        if @item.save
            redirect_to root_path
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def destroy
        @item = Item.find(params[:id])
        if @item.destroy
            redirect_to root_path
        else
            render index
        end
    end

    def update
        @item = Item.find(params[:id])
        if @item.update(item_params)
            redirect_to root_path
        else
            render item_path
    end



    private

    def item_params
        params.require(:item).permit(:image,:price,:coments,:product_name,:delivery_fee_id,:shipping_date_id,:ship_from_id,:categori_id,:product_status_id).merge(user_id: current_user.id)
    end

    def set_item
        @item = Item.find(params[:id])
    end
    
end
