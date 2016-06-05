class AddUserIdToBeltgradings < ActiveRecord::Migration
  def change
    add_column :beltgradings, :user_id, :integer
  end
end
