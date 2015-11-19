class CreateComments < ActiveRecord::Migration
  def change

    create_table :comments do |t|
      t.string :user, {null:false}
      t.string :title, {null:false}
      t.text :comment_body, {null:false}

      t.timestamps(null:false)
    end
  end
end
