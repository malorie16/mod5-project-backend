class PanoSerializer < ActiveModel::Serializer
  attributes :id, :caption, :user_id, :image
  belongs_to :user
  has_many :likes
  has_many :comments
end
