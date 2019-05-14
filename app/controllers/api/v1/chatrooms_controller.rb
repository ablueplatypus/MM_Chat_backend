class Api::V1::ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
    render json: @chatrooms, status: :ok
  end

    def show
      @chatroomID = Chatroom.find_by(params[:id])
      render json: @chatroomID, status: :ok
    end

  def create
    usersArray = params[:room_name].split(',')
    @chatroom = Chatroom.create(room_name: params[:room_name])
    # allUsers = User.all
    usersArray.each do |arrayuser|
      foundUser = User.all.find do |user|
        user.id == arrayuser.to_i
      end
      @chatroom.users << foundUser
    end

    render json: @chatroom
  end

  def open
    #This is the chatroom id will be the hash that is sent back from messages
    chatroom = Chatroom.find(params[:chatroom_id])
    if chatroom
      render json: chatroom
    else
      render json: {error: "Rut Row something went wrong!"}
    end
  end

  def add_message
    chatroom = Chatroom.find(params[:chatroom_id])
    user = User.find(params[:user_id])
  end


  def show
    # @chatroom = Chatroom.find_by(slug: params[:slug])
    # @message = Message.new
  end

end
