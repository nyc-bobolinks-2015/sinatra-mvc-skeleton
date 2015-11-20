class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references   :user, null: false
      t.references   :comment
      t.string       :title
      t.string       :content, null: false

      t.timestamps(null: false)
    end
  end
end
