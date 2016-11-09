class ChangeRfidTagsFormatInTagId < ActiveRecord::Migration
  def change
  	change_column :rfid_tags, :tag_id, :string
  end
end
