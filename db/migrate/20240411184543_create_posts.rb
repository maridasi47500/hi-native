class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.integer :demande_id
      t.text :content
      t.string :pic
      t.string :rec
      t.text :info
      t.integer :user_id

      t.timestamps
    end
  end
end
