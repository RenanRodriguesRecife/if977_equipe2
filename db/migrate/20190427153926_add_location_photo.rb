class AddLocationPhoto < ActiveRecord::Migration[5.0]
  def change
    add_column :complaints, :photo, :string
  end
end
