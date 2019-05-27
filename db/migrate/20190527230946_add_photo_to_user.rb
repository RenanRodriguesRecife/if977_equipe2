class AddPhotoToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_photo, :string
  end
end
