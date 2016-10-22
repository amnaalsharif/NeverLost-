class CreateLendings < ActiveRecord::Migration
  def change
    create_table :lendings do |t|
      t.integer :tag_id
      t.integer :user_id
      t.datetime :from
      t.datetime :to

      t.timestamps null: false
    end
  end
end
