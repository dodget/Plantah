class ChangeTypeToFamily < ActiveRecord::Migration
  def change
    rename_column :plants, :type, :family
  end
end
