require 'test_helper'

class ParsedChapterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: parsed_chapters
#
#  id                 :integer          not null, primary key
#  content            :text
#  book_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  words_count        :integer          default(0)
#  translated_content :text
#  is_translated      :boolean          default(FALSE)
#
