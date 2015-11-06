class CreateTestSessions < ActiveRecord::Migration
  def change
    create_table :test_sessions do |t|
      t.references :user, index: true, foreign_key: true
      t.references :test, index: true, foreign_key: true
      t.integer :result

      t.timestamps null: false
    end
  end
end
