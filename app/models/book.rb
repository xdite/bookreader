class Book < ApplicationRecord
  belongs_to :user

  mount_uploader :file, EbookUploader

  has_many :parsed_chapters
end

# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  file       :string
#
