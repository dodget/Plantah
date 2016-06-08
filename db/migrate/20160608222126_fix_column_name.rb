class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :antagonisms, :user_id, :plant_id
  end
end
