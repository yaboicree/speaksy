class AddVocabListtoVocabs < ActiveRecord::Migration
  def change
  	add_reference :vocabs, :vocab_list, index: true
  	add_foreign_key :vocabs, :vocab_lists
  end
end
