class Lending < ActiveRecord::Base
	belongs_to :rfid_tag, foreign_key: "tag_id"
	belongs_to :user
	#has_many :detections, :through => :rfid_tag, foreign_key: "tag_id"
end
