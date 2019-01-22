class Api::V1::MessagesController < ApplicationController

  def index
    @messages = Message.all
    render json: @messages, status: :ok
  end

  def create
    # NEED TO UPDATE
    # message = Message.new(message_params)
    # message.user = current_user
    # if message.save
    #   # do some stuff
    # else
    #   redirect_to chatrooms_path
    # end
  end

  private

    def message_params
      params.require(:message).permit(:content, :chatroom_id)
    end
end
