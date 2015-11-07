class AddNameToConstituency < ActiveRecord::Migration
  def change
    add_column :constituencies, :name, :string
  end
end
