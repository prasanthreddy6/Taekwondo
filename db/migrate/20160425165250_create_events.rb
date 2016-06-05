class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :type
      t.string :location
      t.date :event_date
      t.string :team_manager
      t.string :team_coach
      t.string :team_officials
      t.integer :team_positions

      t.timestamps null: false
    end
  end
end
