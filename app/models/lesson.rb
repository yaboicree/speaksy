class Lesson < ActiveRecord::Base
  belongs_to :chapter
  has_many :grammar_points
  has_many :vocab_lists
end
