class AddNametoVocabList < ActiveRecord::Migration
  def change
  	add_column :vocab_lists, :name, :string
  end
end
