class AddNameToComplaints < ActiveRecord::Migration[5.0]
  def change
    add_column :complaints, :name, :text
  end
end
