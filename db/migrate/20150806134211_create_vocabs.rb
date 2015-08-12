class CreateVocabs < ActiveRecord::Migration
  def change
    create_table :vocabs do |t|
      t.string :word
      t.references :vocablist, index: true

      t.timestamps null: false
    end
    add_foreign_key :vocabs, :vocablists
  end
end
