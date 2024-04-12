class CreateStudyLanguages < ActiveRecord::Migration[7.1]
  def change
    create_table :study_languages do |t|
      t.integer :user_id
      t.integer :language_id
      t.integer :learning_level_id

      t.timestamps
    end
  end
end
