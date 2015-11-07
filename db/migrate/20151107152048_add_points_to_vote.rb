class AddPointsToVote < ActiveRecord::Migration
  def change
    add_column :votes, :points, :integer
  end
end
