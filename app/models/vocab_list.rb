class VocabList < ActiveRecord::Base
	belongs_to :lesson
	#add belongs_to :user IF vocablist should be associated with individual user
	has_many :vocabs
end