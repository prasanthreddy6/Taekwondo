class ChampionshipsController < ApplicationController

 before_action :check_user 

  before_action :set_championship, only: [:show, :edit, :update, :destroy]

  # GET /championships
  # GET /championships.json

  def index
    @championships = Championship.all
  end

  # GET /championships/1
  # GET /championships/1.json
  def show
  end

  # GET /championships/new
  def new
    @championship = Championship.new
    #@user = User.all.where("id=?", params[:id])
    @championship.user_id = params[:user_id]
    #@championship.user_id = @user.id
    #@championship.name = @user.name 
    


  end

  # GET /championships/1/edit
  def edit
  end

  # POST /championships
  # POST /championships.json
  def create
    @championship = Championship.new(championship_params)

    respond_to do |format|
      if @championship.save
        format.html { redirect_to @championship, notice: 'Championship was successfully created.' }
        format.json { render :show, status: :created, location: @championship }
      else
        format.html { render :new }
        format.json { render json: @championship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /championships/1
  # PATCH/PUT /championships/1.json
  def update
    respond_to do |format|
      if @championship.update(championship_params)
        format.html { redirect_to @championship, notice: 'Championship was successfully updated.' }
        format.json { render :show, status: :ok, location: @championship }
      else
        format.html { render :edit }
        format.json { render json: @championship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /championships/1
  # DELETE /championships/1.json
  def destroy
    @championship.destroy
    respond_to do |format|
      format.html { redirect_to championships_url, notice: 'Championship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_championship
      @championship = Championship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def championship_params
      params.require(:championship).permit(:name, :type, :weight_category, :group, :poomsae_paticipation, :events, :fight_won, :fight_played, :rewards, :medal_g, :medal_s, :medal_b, :medal_n, :user_id, :pic)
    end
end
