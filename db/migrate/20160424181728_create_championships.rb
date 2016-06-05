class CreateChampionships < ActiveRecord::Migration
  def change
    create_table :championships do |t|
      t.string :name
      t.string :type
      t.string :weight_category
      t.string :group
      t.string :poomsae_paticipation
      t.string :events
      t.integer :fight_won
      t.integer :fight_played
      t.string :rewards
      t.integer :medal_g
      t.integer :medal_s
      t.integer :medal_b
      t.integer :medal_n

      t.timestamps null: false
    end
  end
end
