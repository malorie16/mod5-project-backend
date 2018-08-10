class CommentSerializer < ActiveModel::Serializer
  attributes :id, :pano_id, :comment
  belongs_to :pano
  
end
