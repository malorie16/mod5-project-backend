class User < ApplicationRecord
  has_secure_password
  has_many :panos
  has_many :likes, :through => :panos
  has_many :comments, :through => :panos
end
