class User < ActiveRecord::Base

  has_secure_password

  validates :name, :presence => true
  validates :email, :presence => true
  has_many :links
  has_many :comments
  has_many :votes
end
