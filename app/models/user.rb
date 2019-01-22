class User < ApplicationRecord
  has_many :messages
  has_many :chatrooms, through: :messages
  # validates :username, presence: true, uniqueness: true
end

# some weird comment
# git pull origin master it how to pull down changes.
# Ok Matt we got it to work
