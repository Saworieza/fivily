class Order < ActiveRecord::Base
  #order is the conglomeration of all the order items  
  has_many :order_items
  has_many :items, through: :order_items

  belongs_to :user

  after_initialize :default_values 

  def default_values 
    self.status = false if self.status.nil?
  end 

  def subtotal
    #price 
    #@invoices_1_week.sum("total")
    items.sum("price")
  end

  def totalprics 
    subtotal.to_i * 1.15 
  end 
end