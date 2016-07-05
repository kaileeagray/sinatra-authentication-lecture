class User < ActiveRecord::Base
  has_secure_password
  # this adds 5 new methods to user

  has_many :posts
end
