class Api::V1::ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
    render json: @chatrooms, status: :ok
  end

  def show
    # @chatroom = Chatroom.find_by(slug: params[:slug])
    # @message = Message.new
  end

end
