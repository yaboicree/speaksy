# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.create!(name: "example"
#						 email: "example@example.com"
#						 encrypted_password: "password") 
						 ## need to google how to create seed data with Devise... this probably wont work

12.times do |n|
Chapter.create!(name: "Chapter #{n}")
end

chapter = Chapter.first
chapter.lessons.create!(name: "Lesson 0")

#Vocab.create()
# chapter.lessons.first.vocabs.create!(#array of vocab we wanted
# 	)
#chapter.lessons.first. will select chapter 0 lesson 0