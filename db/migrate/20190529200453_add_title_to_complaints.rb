class AddTitleToComplaints < ActiveRecord::Migration[5.0]
  def change
    add_column :complaints, :title, :string
  end
end
