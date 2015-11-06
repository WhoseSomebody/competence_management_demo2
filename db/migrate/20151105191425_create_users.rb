class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :login
      t.string :password
      t.string :email
      t.references :profession, index: true, foreign_key: true
      t.integer :rating
      t.integer :group

      t.timestamps null: false
    end
  end
end
