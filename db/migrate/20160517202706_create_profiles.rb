class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user
      t.string :name
      t.date :dob
      t.string :father_name
      t.string :tfiid
      t.string :roll_number
      t.string :address
      t.integer :phone_number
      t.date :doj
      t.string :status
      t.timestamps null: false
    end
  end
end


