class AddStatusToRfidTags < ActiveRecord::Migration
  def change
    add_column :rfid_tags, :status, :boolean, default: false
  end
end
