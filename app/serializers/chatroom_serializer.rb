class ChatroomSerializer < ActiveModel::Serializer
  attributes :id, :room_name
  has_many :users
  belongs_to :users
  has_many :messages
  has_many :users
end
