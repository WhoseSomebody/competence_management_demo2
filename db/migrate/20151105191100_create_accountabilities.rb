class CreateAccountabilities < ActiveRecord::Migration
  def change
    create_table :accountabilities do |t|
      t.text :description
      t.references :profession, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
