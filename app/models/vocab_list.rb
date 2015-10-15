class VocabList < ActiveRecord::Base
	belongs_to :lesson
	#add belongs_to :user IF vocablist should be associated with individual user??? 
	#^^^thinking about implementing flash cards
	has_many :vocabs
end