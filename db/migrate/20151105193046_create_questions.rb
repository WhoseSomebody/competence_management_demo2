class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :test, index: true, foreign_key: true
      t.integer :text_image
      t.string :question_text
      t.has_attached_file :question_image
      t.boolean :is_active
      t.integer :difficulty
      t.boolean :is_open

      t.timestamps null: false
    end
  end
end
