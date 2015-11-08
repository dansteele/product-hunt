class AddPointsToConstituents < ActiveRecord::Migration
  def change
    add_column :constituents, :points, :integer, default: 50
  end
end
