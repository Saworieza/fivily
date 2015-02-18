class OrdersController < ApplicationController

  def index 
    @orders = Order.all 
  end 

#this obviously is not right 
  def show 
    @order_items = Order(params :id)
  end 

  def new 
    @order = Order.create
  end 
  
  def create 
    #incomplete method
    #needs to take all the 
    #even though it's in a different view 
    #this is how you add all the items to your order 
    #when you click "proceed to checkout"
    Order.create(items: params[:item_id])
  end 

  def totalprics 

  end 

#this is where the order goes once it has been submitted? 
#it takes the items in the order and populates the order items model 
#it somehow then packages all the "order items" into 1 "order"



#research how to get 2 controllers talking to 1 model 
#and how to output those 2 controllers to the same view 



end
