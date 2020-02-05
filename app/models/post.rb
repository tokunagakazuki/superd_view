class Post < ApplicationRecord
  # before_save :geocode_full_address
  belongs_to :user
  geocoded_by :title
  after_validation :geocode
  acts_as_taggable
  validates :title,:image,:description, presence: true
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

  def self.search(search)
    if search
      Post.where('title LIKE(?) OR description LIKE (?)', "%#{search}%", "%#{search}%").order("created_at DESC")
    else
      Post.all
    end
  end

  # def geocode_full_address
  #   coords = Geocoder.coordinates(
  #     self.prefecture + self.city + self.address # 県名 + 市町村名 + 丁目番地
  #   )
  #   self.latitude = coords[0]
  #   self.longitude = coords[1]
  # end

  mount_uploader :image, ImageUploader
end
