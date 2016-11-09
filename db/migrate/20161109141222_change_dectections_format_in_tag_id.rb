class ChangeDectectionsFormatInTagId < ActiveRecord::Migration
  def change
  	change_column :detections, :tag_id, :string
  end
end
