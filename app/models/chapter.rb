class Chapter < ApplicationRecord
  belongs_to :book
  acts_as_list scope: :book
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
