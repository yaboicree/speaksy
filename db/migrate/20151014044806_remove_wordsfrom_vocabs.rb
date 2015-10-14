class RemoveWordsfromVocabs < ActiveRecord::Migration
  def change
  	  	  	remove_column :vocabs, :word, :string
  end
end
