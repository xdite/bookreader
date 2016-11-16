class Chapter < ApplicationRecord
  belongs_to :book, counter_cache: true
  acts_as_list scope: :book

  before_update :set_words_count

  def set_words_count
    self.words_count = content.length
  end
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
