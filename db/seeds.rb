# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create({email:"admin@admin.com",password:"admin1",name:"Admin", admin:true, id: 1} )
sensors = Sensor.create({sensor_id: "1"})
rfid_tags = RfidTag.create({tag_id: "1"})
lendings = Lending.create({tag_id: "1", user_id: 1})
detections = Detection.create ({tag_id: "1", sensor_id: "1"})
