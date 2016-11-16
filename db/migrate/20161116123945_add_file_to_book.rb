class AddFileToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :file, :string
  end
end
