class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name
  has_many :panos
  has_many :likes, :through => :panos
  has_many :comments, :through => :panos
end
