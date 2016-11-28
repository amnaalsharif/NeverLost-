class Lending < ActiveRecord::Base
	belongs_to :rfid_tag, foreign_key: "tag_id"
	belongs_to :user, foreign_key: "user_id"
	#belongs_to :detection
	has_many :detections, :through => :rfid_tag, foreign_key: "tag_id"
end
