class ChatroomSerializer < ActiveModel::Serializer
  attributes :id, :room_name
  # has_and_belongs_to_many :users
  has_many :messages
  has_many :users
end
