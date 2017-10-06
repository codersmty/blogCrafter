class AddCommunityIdToSchedule < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :community_id, :integer
  end
end
