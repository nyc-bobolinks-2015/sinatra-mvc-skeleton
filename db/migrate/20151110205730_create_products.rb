class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.decimal :price, null: false
      t.string :description
      t.string :color

      t.timestamps null: false
    end
  end
end
