class AddIsTranslateToChapter < ActiveRecord::Migration[5.0]
  def change
    add_column :parsed_chapters, :is_translated, :boolean, default: false
  end
end
