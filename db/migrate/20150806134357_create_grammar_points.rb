class CreateGrammarPoints < ActiveRecord::Migration
  def change
    create_table :grammar_points do |t|
      t.text :content
      t.references :lesson, index: true

      t.timestamps null: false
    end
    add_foreign_key :grammar_points, :lessons
  end
end
