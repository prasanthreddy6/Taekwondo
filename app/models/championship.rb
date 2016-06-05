class Championship < ActiveRecord::Base

belongs_to :user

self.inheritance_column = nil

validates_presence_of :name, :type, :weight_category, :group, :poomsae_paticipation, :events, :fight_won, :fight_played, :rewards, :medal_g, :medal_s, :medal_b, :medal_n

has_attached_file :pic, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  
validates_attachment_content_type :pic, content_type: /\Aimage\/.*\Z/

end