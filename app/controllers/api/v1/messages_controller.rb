class Api::V1::MessagesController < ApplicationController
  before_action :message_params, only: [:create]

  def index
    @messages = Message.all
    render json: @messages, status: :ok
  end

  def show
    @id = Message.find_by(message_params[:id])
    render json: @id, status: :ok
  end

  def create
    # byebug
    @message = Message.create(message_params)
    render json: @message, status: :created
    # if @message.save
    # else
    #   render json: { errors: @message.errors.full_messages }, status: :unprocessible_entity
    #   #code
    # end
  end

  private
    def message_params
      params.require(:message).permit(:id, :content, :user_id, :chatroom_id)
    end
end
