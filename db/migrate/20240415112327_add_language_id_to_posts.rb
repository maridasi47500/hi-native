class AddLanguageIdToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :language_id, :integer
  end
end
