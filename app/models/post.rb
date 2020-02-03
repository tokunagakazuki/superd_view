class Post < ApplicationRecord
  belongs_to :user
  acts_as_taggable
  validates :title,:image,:description, presence: true

  mount_uploader :image, ImageUploader
end
