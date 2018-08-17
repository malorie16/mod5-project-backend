class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true
  validates :name, length: {maximum: 40}
  validates :email, length: {maximum: 75}
  validates :password, length: {maximum: 20}
  has_many :panos
  has_many :likes, :through => :panos
  has_many :comments, :through => :panos

  def formatted_json
    {user: self, panos: self.panos}
  end

end
