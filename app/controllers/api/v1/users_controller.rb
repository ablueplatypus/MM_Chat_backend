class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: :ok
  end


  def show
    @userID = User.find_by(params[:id])
    render json: @userID, status: :ok
  end

  def create
    # byebug
    # my_hash = JSON.parse(received_hash)
    #my hash will be data coming in on the front end to create a user.
    @new_user = User.create(username: params[:username], password_digest: params[:password_digest])
    if @new_user.valid?
      render json: @new_user, status: :accepted # Get Back Here (not to send the password)
    else
      render json: { errors: @new_user.errors.full_messages }, status: :unprocessible_entity
    end
  end # end of create method


end
