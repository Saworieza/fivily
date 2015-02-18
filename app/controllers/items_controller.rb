class ItemsController < ApplicationController

# write before_actions

  def index 
    @items = Item.all
  end 


  def new 
#the method that makes you could create new order which items can be added to it
    @order = Order.create
    @item = @order.items.new
  end 

  def create 
     @item = Item.new(item_params) #creates new instance var called item which holds an item object which data is passed using the params

    respond_to do |format| 
      if @item.save #if the item want to be saved in html format, redirect to the root path and give notification 'item was succesfully created' and rendering to json format
        format.html { redirect_to items_path, notice: 'Item was successfully created.'}
        format.json { render :show, status: :created, location: @item } #
      else # 

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
