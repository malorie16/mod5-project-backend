class Pano < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :likes
  has_many :comments

  def get_image
    {pano: self, image: self.image}
  end
end
