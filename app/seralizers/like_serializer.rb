class LikeSerializer < ActiveModel::Serializer
  attributes :id, :likes, :pano_id
  belongs_to :pano
  
end
