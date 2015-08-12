class VocabList < ActiveRecord::Base
	belongs_to :lesson
	has_many :vocabs
end
