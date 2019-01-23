class Api::V1::ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
    render json: @chatrooms, status: :ok
  end

  def create
    @chatroom = Chatroom.create(params[:room_name])
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
