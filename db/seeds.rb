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
Chapter.create!(name: "Chapter #{n}", description: "This 
	lesson will cover basic grammar, some vocabulary about 
	farm animals and has some cool arcade style games to help you learn.")
end

chapter = Chapter.first
chapter.lessons.create!(name: "Lesson 0")

VocabList.create!({lesson_id: 1, name: "Basic Phrases"})

Vocab.create!({vocab_list_id: 1, en: "Good Morning", jp: "Ohayou"})
Vocab.create!({vocab_list_id: 1, en: "Good Evening", jp: "こんばんは"})
Vocab.create!({vocab_list_id: 1, en: "Japan", jp: "日本"})


###for some reason this is creating two identical grammar points
GrammarPoint.create!({lesson_id: 1, content: 'は is the 
	topic marker particle. This means that は (pronounced "wa") 
	can mark the subject of the sentence (the actor) or 
	the subject being discussed.

Example: 
"I am a student." 
私は学生です。'})