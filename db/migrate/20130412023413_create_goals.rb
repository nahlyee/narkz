class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.datetime :due_date
      t.integer :user_id

      t.timestamps
    end
  end
end
