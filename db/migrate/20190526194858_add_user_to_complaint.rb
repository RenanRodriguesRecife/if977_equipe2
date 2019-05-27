class AddUserToComplaint < ActiveRecord::Migration[5.0]
  def change
    add_reference :complaints, :user, foreign_key: true
  end
end
