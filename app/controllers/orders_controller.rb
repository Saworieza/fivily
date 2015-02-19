class OrdersController < ApplicationController
# before_action :set_order, only: [:update]

  def index 
    @orders = Order.all 
  end 

#this obviously is not right 
  def show 
#    @order_items = Order(params :id)
  end 

  def new 
    @order = Order.find(params[:order_id])
    @items = @order.items
    # @order_items = OrderItem.where("order_id=?", )
  end 
  
  def create 

    #this is how you add all the items to your order 
    #when you click "place order" 


#    Order.where(:id => order.id).update_all(({:total_prics => @st}))
    # order_params 
 #   Order.create(items: params[:item_id])

  end 

  def update 
  end 

  def totalprics 

  end 

#this is where the order goes once it has been submitted? 
#it takes the items in the order and populates the order items model 
#it somehow then packages all the "order items" into 1 "order"



#research how to get 2 controllers talking to 1 model 
#and how to output those 2 controllers to the same view 
  private 

  # def set_order
  #   @order = Order.find(params[:id])
  # end 

    def order_params 
      params.require(:order).permit(:total_prics, :comments, :date, :user_id)
    end   



end
