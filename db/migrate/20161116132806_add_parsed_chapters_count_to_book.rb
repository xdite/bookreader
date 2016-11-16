class AddParsedChaptersCountToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :parsed_chapters_count, :integer, default: 0
  end
end
