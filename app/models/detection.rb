class Detection < ActiveRecord::Base
	belongs_to :sensor
	belongs_to :rfid_tag, foreign_key: "tag_id"
	has_many :lendings, through: :rfid_tag, foreign_key: "tag_id"
	#validates :sensor_id, presence: true
	def self.search(search)
  		if search
   			 where('tag_id LIKE ?', "#{search}")
  		else
    		all
 		end
	end
end
