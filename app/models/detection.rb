class Detection < ActiveRecord::Base
	belongs_to :sensor
	belongs_to :rfid_tag
	validates :sensor_id, presence: true
end
