class CreateAntagonisms < ActiveRecord::Migration
  def change
    create_table :antagonisms do |t|
      t.integer :user_id
      t.integer :antagonist_id

      t.timestamps null: false
    end
  end
end
