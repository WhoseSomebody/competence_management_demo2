class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.references :question
      t.integer :text_image
      t.string :choice_text
      t.has_attached_file :choice_image
      t.boolean :is_correct

      t.timestamps null: false
    end
  end
end
