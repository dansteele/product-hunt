class RemoveUpvotesDownvotesFromMotions < ActiveRecord::Migration
  def change
    remove_column :motions, :downvotes
    remove_column :motions, :upvotes
  end
end
