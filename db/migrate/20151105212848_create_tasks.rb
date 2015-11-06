class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :profession, index: true, foreign_key: true
      t.references :competence, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
