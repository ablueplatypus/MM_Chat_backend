class ChatroomChannel < ApplicationCable::Channel

  def subscribed
    # stream_from "some_channel"
    chatroom = Chatroom.find(params[:chatroom_id])
    stream_fro chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
