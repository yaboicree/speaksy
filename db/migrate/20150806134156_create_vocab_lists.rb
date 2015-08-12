class CreateVocabLists < ActiveRecord::Migration
  def change
    create_table :vocab_lists do |t|

      t.timestamps null: false
    end
  end
end
