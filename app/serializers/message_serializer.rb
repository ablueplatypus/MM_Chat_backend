class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :chatroom_id, :user_id
  belongs_to :user
  belongs_to :chatroom
end
