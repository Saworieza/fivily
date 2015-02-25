class ItemsController < ApplicationController
 # write before_actions
 before_filter :authenticate_user!
 before_action :set_order, only: [:new, :create, :index]
 before_action :set_item, only: [:show, :create]
  

  def index 
    @items = Item.all
  end 

  def new 
    #the method that makes you could create new order which items can be added to it
    @item = @order.items.new
  end 

  def edit
    @item = Item.find(params[:id])
  end 

  def create 
    # creates new instance var called item which holds an item object which data is passed using the params
    # @item = @order.items.new(item_params)
    # byebug

    if params[:quantity].to_i.times { @order.items << @item }
      redirect_to root_path
    else 
      render item_path(@item)
    end
  end 

  def show
  end

  def subtotal

  end


#this is the information for how the menu gets populated?
#from the item/type models to the items/index.html.erb view 
#but put the calculations in helpers 
private

  def set_item
    @item = Item.find(params[:id])
  end

  def set_order 
    # @order = current_user.orders.first || current_user.orders.create 

    @order = current_user.orders.not_ordered.first || current_user.orders.create 
    # if @order.total_prics != nil
    #   @order = current_user.orders.create
    # end

  end 


  def item_params
    params.require(:item).permit(:quantity, :description)
  end


end
