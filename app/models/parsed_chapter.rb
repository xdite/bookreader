class ParsedChapter < ApplicationRecord
  belongs_to :book
end

# == Schema Information
#
# Table name: parsed_chapters
#
#  id         :integer          not null, primary key
#  content    :text
#  book_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
