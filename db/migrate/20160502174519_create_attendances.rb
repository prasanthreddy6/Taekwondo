class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :present_days
      t.integer :total_days

      t.timestamps null: false
    end
  end
end
