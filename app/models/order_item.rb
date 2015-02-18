#orderitem is things that have actually been added to an order 
class OrderItem < ActiveRecord::Base
  #this is just the menu "items"
  belongs_to :item
  belongs_to :order
end
