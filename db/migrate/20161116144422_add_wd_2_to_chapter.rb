class AddWd2ToChapter < ActiveRecord::Migration[5.0]
  def change
    add_column :parsed_chapters, :translated_words_count, :integer, default: 0
  end
end
