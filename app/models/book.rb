class Book < ApplicationRecord
  belongs_to :user

  mount_uploader :file, EbookUploader

  has_many :parsed_chapters

  def translate!
    parsed_chapters.where(is_translated: false).each(&:translate!)
  end

  def readable_chapters
    parsed_chapters.where("words_count > ?", 1000).order("id ASC")
  end
end

# == Schema Information
#
# Table name: books
#
#  id                    :integer          not null, primary key
#  title                 :string
#  user_id               :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  file                  :string
#  parsed_chapters_count :integer          default(0)
#
