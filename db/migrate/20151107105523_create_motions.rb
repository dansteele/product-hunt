class CreateMotions < ActiveRecord::Migration
  def change
    create_table :motions do |t|
      t.string :title
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps null: false
    end
  end
end
