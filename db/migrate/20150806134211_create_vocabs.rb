class CreateVocabs < ActiveRecord::Migration
  def change
    create_table :vocabs do |t|
      t.string :word

      t.timestamps null: true
    end
  end
end
