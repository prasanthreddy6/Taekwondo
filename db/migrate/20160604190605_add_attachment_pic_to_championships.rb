class AddAttachmentPicToChampionships < ActiveRecord::Migration
  def self.up
    change_table :championships do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :championships, :pic
  end
end
