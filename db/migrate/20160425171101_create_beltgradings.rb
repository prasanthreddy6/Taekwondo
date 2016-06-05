class CreateBeltgradings < ActiveRecord::Migration
  def change
    create_table :beltgradings do |t|
      t.string :status
      t.string :type
      t.string :location
      t.date :event_date

      t.timestamps null: false
    end
  end
end
