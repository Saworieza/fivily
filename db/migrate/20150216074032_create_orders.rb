class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.datetime :date
      t.integer :total_prics
      t.text :comments

      t.timestamps null: false
    end
  end
end
