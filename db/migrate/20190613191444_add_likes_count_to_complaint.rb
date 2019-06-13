class AddLikesCountToComplaint < ActiveRecord::Migration[5.0]
  def up
    add_column :complaints, :likes_count, :integer, default: 0
    Complaint.reset_column_information
    Complaint.all.each do |c|
      Complaint.update_counters c.id, likes_count: c.like.length
    end
  end
  def down
    remove_column :complaints, :likes_count
  end
end
