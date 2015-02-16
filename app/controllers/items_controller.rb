class ItemsController < ApplicationController
  def index 
    @items = Item.all

    @juices = Item.where(type_id: 1)
    @yummytreats = Item.where(type_id: 2)
    @food = Item.where(type_id: 3)
    @smallbits = Item.where(type_id: 4)
  end 

  # def show 
  #   @item = Items
  # end 

#this is the information for how the menu gets populated?
#from the item/type models to the items/index.html.erb view 
#but put the calculations in helpers 


end
