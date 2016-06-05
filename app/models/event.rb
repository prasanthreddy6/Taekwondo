class Event < ActiveRecord::Base

self.inheritance_column = nil

serialize :team_manager
serialize :team_coach
serialize :team_officials

before_validation do |event|

event.team_manager.reject!(&:blank?) if event.team_manager
event.team_coach.reject!(&:blank?) if event.team_coach
event.team_officials.reject!(&:blank?) if event.team_officials

end

has_attached_file :picture, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  
validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/


end
