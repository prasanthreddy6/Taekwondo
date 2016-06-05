class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

has_one :profile, dependent: :destroy, autosave: true
	  accepts_nested_attributes_for :profile


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



 has_one :attendance

 has_many :beltgradings

 has_many :championships




end

