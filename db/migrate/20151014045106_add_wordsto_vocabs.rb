class AddWordstoVocabs < ActiveRecord::Migration
  def change
  	  	  	add_column :vocabs, :words, :string

  end
end
