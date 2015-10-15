class RemoveWordssfromVocabs < ActiveRecord::Migration
  def change
  	remove_column :vocabs, :words, :string
  	add_column :vocabs, :jp, :string
  	add_column :vocabs, :en, :string
  end
end
