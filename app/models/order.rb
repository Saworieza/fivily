class Order < ActiveRecord::Base
  #order is the conglomeration of all the order items  
  has_many :items, through: :order_items
end