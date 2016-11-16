class AddWordsCountToContent < ActiveRecord::Migration[5.0]
  def change
    add_column :parsed_chapters, :words_count, :integer, default: 0
  end
end
