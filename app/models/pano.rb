class Pano < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments


  def formatted_json
    {pano: self, user: self.user, comments: self.comments, likes: self.likes}
  end
end
