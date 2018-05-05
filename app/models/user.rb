class User < ApplicationRecord
  validates :name, uniqueness: true
  has_secure_password
  has_many :trips
  has_many :fish, through: :trips
end
