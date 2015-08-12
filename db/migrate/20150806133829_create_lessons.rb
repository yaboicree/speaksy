class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.references :chapter, index: true

      t.timestamps null: false
    end
    add_foreign_key :lessons, :chapters
  end
end
