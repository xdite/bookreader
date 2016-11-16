class Chapter < ApplicationRecord
  belongs_to :book, counter_cache: true
  acts_as_list scope: :book

  before_update :set_words_count

  def set_words_count
    self.words_count = content.length
  end

  def title_for_displayed
    if title.present?
      "#{id}-#{title}"
    else
      id
    end
  end

  def current_position
    book.all_chapters.index(id)
  end

  def prev_item
    return nil if current_position.blank?

    index = current_position - 1

    return nil if index == -1
    book.all_chapters[index]
  end

  def next_item
    index = current_position + 1
    book.all_chapters[index]
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
