class CreateChatRoomsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :chatrooms_users do |t|
      t.references :user, foreign_key: true
      t.references :chatroom, foreign_key: true
    end
  end
  #alphabeticaly order pluralized to make this work. 
end
