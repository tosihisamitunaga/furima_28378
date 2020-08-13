class ItemsController < ApplicationController
    def index
        @items = Item.all
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
        if @item.save!
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def item_params
        params.require(:item).permit(:image,:price,:coments,:product_name,:delivery_fee,:shipping_date,:ship_from,:categori,:product_status).merge(user_id: current_user.id)
    end

end
