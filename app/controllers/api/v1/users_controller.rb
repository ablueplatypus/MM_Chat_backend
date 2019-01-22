class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def create
    my_hash = JSON.parse(received_hash)
    @new_user = User.create(my_hash)
    if @new_user.valid?
      render json: @new_user, status: :accepted # Get Back Here (not to send the password)
    else
      render json: { errors: @new_user.errors.full_messages }, status: :unprocessible_entity
    end
  end


end
