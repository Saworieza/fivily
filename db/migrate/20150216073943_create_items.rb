class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :type_id
      t.boolean :is_custom
      t.integer :price
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
