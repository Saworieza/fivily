class OrderItemsController < ApplicationController

  def new
    @order_item = OrderItem.new 
  end

  def create
    @order_item = OrderItem.new(order_item_params)
    @order_item.order_id = 1

    if @order_item.save
      redirect_to @items 
    else
      errors
    end
    
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity)
  end

end