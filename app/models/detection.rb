class Detection < ActiveRecord::Base
	belongs_to :sensor
	belongs_to :rfid_tag, foreign_key: "tag_id"
	has_many :lendings, through: :rfid_tag, foreign_key: "tag_id"
	#validates :sensor_id, presence: true
	def self.search(search)
  		Detection.find_by_sql("SELECT * from rfid_tags, detections, lendings, users where detections.tag_id = rfid_tags.tag_id AND rfid_tags.tag_id = lendings.tag_id AND lendings.user_id = users.id  AND users.phone = #{search}")
	end
end
