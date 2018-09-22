class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthday
  has_many :wods
end
