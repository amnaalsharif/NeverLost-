class RfidTag < ActiveRecord::Base
	self.primary_key = 'tag_id'
	has_many :detections, foreign_key: "tag_id"
	has_many :sensors, :through => :detections
	has_many :users, :through => :lendings
	has_many :lendings, foreign_key:"tag_id"
	validates  :tag_id, :uniqueness => { :scope => :tag_id,
    :message => "already registered" }
    validates :tag_id, presence: true
end
