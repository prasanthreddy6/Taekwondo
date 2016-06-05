class ProfilesController < ApplicationController

def profileview

 @user = User.find(current_user.id)
 @belts = Beltgrading.where("user_id=?", current_user.id )

end



def edit
    @user = Profile.find(params[:id])
  end

  def update
    @user = Profile.find(params[:id])
    if @user.update_attributes(test_params)
      redirect_to profiles_profileview_path, :notice => "data is updated"

    else
      render "edit"
    end
  end

 private

  def test_params
      params.require(:profile).permit(:name,:dob,:father_name,:address,:phone_number,:doj, :avatar, :status, :roll_number, :tfiid)
  end

end
