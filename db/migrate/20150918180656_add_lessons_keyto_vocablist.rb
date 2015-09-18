class AddLessonsKeytoVocablist < ActiveRecord::Migration
  def change
  	    add_foreign_key :vocablists, :lessons
  end
end