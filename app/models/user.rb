class User < ApplicationRecord
  has_secure_password
  has_many :messages
  has_many :chatrooms, through: :messages
  validates :name, uniqueness: { case_sensetive: false}
end
