class ItemsController < ApplicationController

# write before_actions

  def index 
    @items = Item.all
  end 

  def show 
    @item = Item.find(params[:id])
    @order_item = OrderItem.new
  end 

  def create 
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
