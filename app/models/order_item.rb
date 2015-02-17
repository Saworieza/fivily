#orderitem is things that have actually been added to an order 
class OrderItem < ActiveRecord::Base
  #this is just the menu "items"
  has_many :items 

  belongs_to :order

  accepts_nested_attributes_for :items
end
