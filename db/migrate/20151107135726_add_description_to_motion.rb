class AddDescriptionToMotion < ActiveRecord::Migration
  def change
    add_column :motions, :description, :string
  end
end
