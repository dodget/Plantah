class AddColumnsToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :type, :string
    add_column :plants, :sun, :string
    add_column :plants, :spacing, :string
  end
end
