class User < ApplicationRecord
  validates :user_name, :email, :presence => true
  has_many :posts
end
