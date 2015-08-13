# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

@user = User.new
@user.username = "glacier"
@user.save

@diary = Diary.new
@diary.number = 3
@diary.date = 20150812
@diary.content = "I created diary app"
@diary.save
