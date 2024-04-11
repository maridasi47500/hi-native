class CreateDemandes < ActiveRecord::Migration[7.1]
  def change
    create_table :demandes do |t|
      t.string :name
      t.string :image
      t.string :icon

      t.timestamps
    end
  end
end
