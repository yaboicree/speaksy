class VocabList < ActiveRecord::Base
	has_many :vocabs #not sure how ruby will pluralize "vocab"
end
