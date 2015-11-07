class CreateMotionLists < ActiveRecord::Migration
  def change
    create_table :motion_lists do |t|
      t.integer :government_id

      t.timestamps null: false
    end
  end
end
