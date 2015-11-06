class CreateUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
      t.references :user, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true
      t.references :choice, index: true, foreign_key: true
      t.string :choice_self
      t.boolean :is_correct
      t.references :test_session, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
