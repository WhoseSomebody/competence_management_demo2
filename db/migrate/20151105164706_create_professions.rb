class CreateProfessions < ActiveRecord::Migration
  def change
    create_table :professions do |t|
      t.integer :min_level_of_compet_test
      t.string :profession_name
      t.integer :level
      t.text :mission
      t.text :summary_statement

      t.timestamps null: false
    end
  end
end
