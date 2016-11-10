class RfidTag < ActiveRecord::Base
	has_many :detections
	has_many :sensors, :through => :lendings
	has_many :users, :through => :lendings
	validates  :tag_id, :uniqueness => { :scope => :tag_id,
    :message => "already registred" }
    validates :tag_id, presence: true
end
