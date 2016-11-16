class AddTranslateContentToParsedChapter < ActiveRecord::Migration[5.0]
  def change
    add_column :parsed_chapters, :translated_content, :text
  end
end
