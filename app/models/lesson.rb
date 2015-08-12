class Lesson < ActiveRecord::Base
  belongs_to :chapter
  has_many :lessons, :grammarpoints, :exercises
end
