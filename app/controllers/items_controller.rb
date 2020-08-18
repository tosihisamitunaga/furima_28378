class ItemsController < ApplicationController
        before_action :set_item, only: [:show,:edit,:destroy,:update]


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
        if @item.destroy
            redirect_to root_path
        else
            render :show
        end
    end

    def update
       if @item.update(item_params)
            redirect_to root_path
        else
            render :edit
        end
    end



    private

    def item_params
        params.require(:item).permit(:image,:price,:coments,:product_name,:delivery_fee_id,:shipping_date_id,:ship_from_id,:categori_id,:product_status_id).merge(user_id: current_user.id)
    end

    def set_item
        @item = Item.find(params[:id])
    end
    
end
