class RfidTag < ActiveRecord::Base
	has_many :detections, foreign_key: "tag_id"
	has_many :sensors, :through => :detections
	has_many :users, :through => :lendings
	validates  :tag_id, :uniqueness => { :scope => :tag_id,
    :message => "already registred" }
    validates :tag_id, presence: true
end
