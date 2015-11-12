class CreateCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :categories_products do |t|
      t.references :category, null: false
      t.references :product, null: false

      t.timestamps null: false
    end
  end
end
