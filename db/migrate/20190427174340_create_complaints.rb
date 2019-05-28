class CreateComplaints < ActiveRecord::Migration[5.0]
  def change
    create_table :complaints do |t|
      t.text :description
      t.float :latitude
      t.float :longitude
      t.datetime :date
      t.references :user
      
      t.timestamps
    end
  end
end
