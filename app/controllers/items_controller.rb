class ItemsController < ApplicationController

# write before_actions

  def index 
    @items = Item.all
  end 

  def new 
    @order = Order.create
    @item = @order.items.new
  end 

  def create 
     @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to items_path, notice: 'Item was successfully created.'}
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
    # @order_item = OrderItem.new(order_item_params)
    #this is how you save the item to the order_items model 

  end 

  def subtotal

  end


#this is the information for how the menu gets populated?
#from the item/type models to the items/index.html.erb view 
#but put the calculations in helpers 

  # private

  # def order_item_params
  #   params.require(:item).permit(:quantity)
  # end
end
