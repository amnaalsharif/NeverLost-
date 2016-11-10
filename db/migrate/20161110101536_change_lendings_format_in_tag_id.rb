class ChangeLendingsFormatInTagId < ActiveRecord::Migration
  def change
  	change_column :lendings, :tag_id, :string
  end
end
