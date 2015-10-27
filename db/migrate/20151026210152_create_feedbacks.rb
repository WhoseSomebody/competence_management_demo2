class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :email
      t.string :content
      t.string :ip

      t.timestamps null: false
    end
  end
end
