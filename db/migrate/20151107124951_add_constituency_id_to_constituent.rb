class AddConstituencyIdToConstituent < ActiveRecord::Migration
  def change
    add_column :constituents, :constituency_id, :integer
  end
end
