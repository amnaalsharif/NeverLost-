class Sensor < ActiveRecord::Base
	has_many :detections
	validates  :sensor_id, :uniqueness => { :scope => :sensor_id,
    :message => "already registred" }
end
