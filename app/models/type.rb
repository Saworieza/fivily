class Type < ActiveRecord::Base
  has_many :items
  # belongs_to :order_item
end
