class OrderItemsController < ApplicationController

  def show 
    @item = Item.find(params[:id])
    @order_item = OrderItem.new
  end 
  
  def new
    @order_item = OrderItem.new 
  end

  def create
    @order_item = OrderItem.new(order_item_params)
    @order_item.order_id = 1
  end

end