class Beltgrading < ActiveRecord::Base

self.inheritance_column = nil

belongs_to :user 

end
