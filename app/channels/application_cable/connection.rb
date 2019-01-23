module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user
    end

    # private
    #   def find_verified_user
    #     access_confirmed = request.params[:'username']
    #     user_id = request.params[:'username']
    #     if verified_user = User.find_by()
    #       verified_user
    #     else
    #       reject_unauthorized_connection
    #     end
    #   end

  end
end
