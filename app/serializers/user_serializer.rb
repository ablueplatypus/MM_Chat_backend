class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest
  has_many :messages
  # has_and_belongs_to_many :chatrooms
end
