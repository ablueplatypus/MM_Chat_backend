class ChatroomSerializer < ActiveModel::Serializer
  attributes :id, :room_name, :created_at
end
