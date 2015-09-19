class AddLessonstoVocablist < ActiveRecord::Migration
  def change
  	add_reference :vocab_lists, :lesson, index: true
  	add_foreign_key :vocab_lists, :lessons
  end
end
