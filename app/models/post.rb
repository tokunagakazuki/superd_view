class Post < ApplicationRecord
  belongs_to :user
  acts_as_taggable
  validates :title,:image,:description, presence: true

  def self.search(search)
    if search
      Post.where('title LIKE(?) OR description LIKE (?)', "%#{search}%", "%#{search}%").order("created_at DESC")
    else
      Post.all
    end
  end

  mount_uploader :image, ImageUploader
end
