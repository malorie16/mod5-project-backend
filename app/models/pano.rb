class Pano < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments

  def formatted_json
    {pano: self, user: self.user}
  end
end
