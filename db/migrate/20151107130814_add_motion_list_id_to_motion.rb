class AddMotionListIdToMotion < ActiveRecord::Migration
  def change
    add_column :motions, :motion_list_id, :integer
  end
end
