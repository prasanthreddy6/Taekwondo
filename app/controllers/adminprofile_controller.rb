class AdminprofileController < ApplicationController

before_action :check_user

def profile



end


def listofstudents

@user = User.all

end


def newbatch

end

def selectbatch

end

def activatestudent

@post = User.find(params[:id])

if @post.profile.status ==nil
@post.profile.update_attribute(:status, "active")
#@attendance = Attendance.new(:user_id => params[:id])
#@attendance.save
redirect_to adminprofile_listofstudents_path, :notice => "column is updated"

end

end

# this method is to display students who have paid fee and will be adding belts 

def studentbelts

@user = Profile.all.where("status =?", "active")

end

def champs
 	
 @user = Profile.all.where("status=?", "active") 

end

end
