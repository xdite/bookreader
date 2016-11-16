class AddTitleToChapter < ActiveRecord::Migration[5.0]
  def change
    add_column :chapters, :title, :string
    add_column :books, :chapters_count, :integer, default: 0
  end
end
