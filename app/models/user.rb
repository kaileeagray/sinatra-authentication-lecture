class User < ActiveRecord::Base
  has_secure_password
  # this adds 5 new methods to user

  validates :email, :presence => true

  has_many :posts
end
