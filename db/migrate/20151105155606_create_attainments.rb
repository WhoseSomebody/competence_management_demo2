class CreateAttainments < ActiveRecord::Migration
  def change
    create_table :attainments do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
