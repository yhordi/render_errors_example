class User < ActiveRecord::Base
  validates :username, :presence => true, :uniqueness => true
  validates :password, length: { minimum: 6 }
end
