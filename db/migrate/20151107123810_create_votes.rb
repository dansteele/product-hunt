class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :constituent_id
      t.integer :motion_id
    end
  end
end
