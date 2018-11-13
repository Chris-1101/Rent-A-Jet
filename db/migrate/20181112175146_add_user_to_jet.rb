class AddUserToJet < ActiveRecord::Migration[5.2]
  def change
    add_reference :jets, :user, foreign_key: true
  end
end
