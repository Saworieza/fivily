class Item < ActiveRecord::Base
  belongs_to :type

  # after_create :save_to_order 

  # attr_accessor :order_id
  
  # def save_to_order
  #   self.order_items.create(order_id: order_id)
  # end 
end
