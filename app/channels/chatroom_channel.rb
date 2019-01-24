class ChatroomChannel < ApplicationCable::Channel

  def subscribed
    # stream_from "some_channel"
    @chatroom = Chatroom.find(params[:id])
    stream_from "Chatroom-#{@chatroom.id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

  def join(hash)
    user = User.find_by(id: hash[:user_id])
    user.current_room = @chatroom.id
    user.status = "online"

    user.save
    unless @chatroom.users.include?(user)
      @chatroom.users << user
      @chatroom.save
      ActionCable.server.broadcast "Chatroom-#{@chatroom.id}", type: "userJoin", user: user
    end
    ActionCable.server.broadcast "Chatroom-#{@chatroom.id}", type: "userUpdate", status: "online", user: user.id
  end

  def leave(hash)
    user.User.find_by(id: hash[:user_id])
    @chatroom.user.delete(User.find_by(:id hash[:user_id]))
    @chatroom.save
    user.current_room = nil
    user.status "offline"
    user.save
    ActionCable.broadcast "Chatroom-#{@chatroom.id}", type: "userLeft", user: hash[:user_id]
  end

  def exit(hash)
    ActionCable.server.broadcast "Chatroom-#{@chatroom.id}", type: "update", status: "offline", user: hash[:user_id]
  end

  def message(hash)
    @message = Message.create()
  end
