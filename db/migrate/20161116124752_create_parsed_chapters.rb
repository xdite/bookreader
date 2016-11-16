class CreateParsedChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :parsed_chapters do |t|
      t.text :content
      t.integer :book_id

      t.timestamps
    end
  end
end
