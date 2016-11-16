require 'test_helper'

class ChapterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: chapters
#
#  id          :integer          not null, primary key
#  content     :text
#  words_count :integer
#  book_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  position    :integer
#  title       :string
#
