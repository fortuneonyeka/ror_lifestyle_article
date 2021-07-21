class Article < ApplicationRecord
  include ImageUploader::Attachment(:image)

  validates :title, presence: true
end
