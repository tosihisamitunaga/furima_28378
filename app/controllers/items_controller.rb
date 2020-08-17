class ItemsController < ApplicationController
    

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
        @item = Item.all
        @item = Item.find(params[:id])
    end

    def edit
        @item = Item.find(params[:id])
    end

    def destroy
        @item = Item.find(params[:id])
        item.destroy
    end

    def update
        item = Item.find(params[:id])
        item.update(item_params)
    end



    private

    def item_params
        params.require(:item).permit(:image,:price,:coments,:product_name,:delivery_fee_id,:shipping_date_id,:ship_from_id,:categori_id,:product_status_id).merge(user_id: current_user.id)
    end


    
end
