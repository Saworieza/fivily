class AddColumnStatusToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :status, :boolean
  end
end