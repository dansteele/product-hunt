class CreateGovernments < ActiveRecord::Migration
  def change
    create_table :governments do |t|
      t.integer :constituency_id

      t.timestamps null: false
    end
  end
end
