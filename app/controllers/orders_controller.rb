class OrdersController < ApplicationController

  def index 
    @orders = Orders.all 
  end 

#this obviously is not right 
  def show 
    @order_items = Order(params :id)
  end 

  def new 
    #even though it's in a different view 
    #this is how you add an item to your order 
    #when you click "add to cart"
  end 

#this is where the order goes once it has been submitted? 
#it takes the items in the order and populates the order items model 
#it somehow then packages all the "order items" into 1 "order"



#research how to get 2 controllers talking to 1 model 
#and how to output those 2 controllers to the same view 



end
