# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create({email:"admin@admin.com",password:"admin1", admin:true})
users = User.create({email:"user@user.com",password:"user1",name:"Amna",phone:"55240476", admin:false})
users = User.create({email:"a@user.com",password:"user1",name:'Amna',phone:"55240476", admin:false})