class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|
      t.string :description

      t.references :discipline, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
