class CreateUserInterestedCountries < ActiveRecord::Migration[7.1]
  def change
    create_table :user_interested_countries do |t|
      t.integer :user_id
      t.integer :country_id

      t.timestamps
    end
  end
end
