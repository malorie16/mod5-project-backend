class Comment < ApplicationRecord
  belongs_to :pano

  def formatted_json
    {comment: self, user: self.pano.user, pano: self.pano}
  end
end
