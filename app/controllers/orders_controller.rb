class OrdersController < ApplicationController
 before_action :set_order, only: [:update, :update_status]
 #before_action :authorize!, only: [:all_orders] 

  def index 
    @orders = Order.all 
  end 

#this obviously is not right 
  def show 
#    
  end 

  def my_orders 
    @orders = current_user.orders
  end 

  def all_orders
   @orders = Order.all

   expense = ExpensesController.new

   @data = expense.index

  end 

  def new 
    @order = Order.find(params[:order_id])
    @items = @order.items
    @prics_galore = @order.items.sum("price")

    # @order_items = OrderItem.where("order_id=?", )
  end 
  
  def create 

    #this is how you add all the items to your order 
    #when you click "place order" 


    # order_params 
 #   Order.create(items: params[:item_id])

  end 

  def update 
    @order.update(order_params)


    redirect_to root_path, notice: 'Order was successfully created!' 
  end 

  def update_status
#    @order.update_column(:status, true)
    
    @order = Order.find(params[:id])

    @order.update_column(:status, true)
    expense = ExpensesController.new
    expense.create_expense(Time.now, @order.total_prics, 'screwboys2')
    redirect_to all_orders_path
  end

  def totalprics 
  end 

#this is where the order goes once it has been submitted? 
#it takes the items in the order and populates the order items model 
#it somehow then packages all the "order items" into 1 "order"



#research how to get 2 controllers talking to 1 model 
#and how to output those 2 controllers to the same view 
  private 

  def set_order
    @order = Order.find(params[:id])
  end 

    def order_params 
      params.require(:order).permit(:total_prics, :comments, :date, :user_id, :status)
    end   

end
