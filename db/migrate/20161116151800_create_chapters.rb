class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.text :content
      t.integer :words_count
      t.integer :book_id
      t.timestamps
    end
  end
end
