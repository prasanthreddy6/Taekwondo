class BeltgradingsController < ApplicationController
  before_action :check_user
  before_action :set_beltgrading, only: [:show, :edit, :update, :destroy]

  # GET /beltgradings
  # GET /beltgradings.json
  def index
    @beltgradings = Beltgrading.all
  end

  # GET /beltgradings/1
  # GET /beltgradings/1.json
  def show
  end

  # GET /beltgradings/new
  def new
    @beltgrading = Beltgrading.new
    @beltgrading.user_id = params[:user_id] 
     
  end

  # GET /beltgradings/1/edit
  def edit
  end

  # POST /beltgradings
  # POST /beltgradings.json
  def create
    @beltgrading = Beltgrading.new(beltgrading_params)
     
    respond_to do |format|
      
      if @beltgrading.save
        format.html { redirect_to @beltgrading, notice: 'Beltgrading was successfully created.' }
        format.json { render :show, status: :created, location: @beltgrading }
      else
        format.html { render :new }
        format.json { render json: @beltgrading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beltgradings/1
  # PATCH/PUT /beltgradings/1.json
  def update
    respond_to do |format|
      if @beltgrading.update(beltgrading_params)
        format.html { redirect_to @beltgrading, notice: 'Beltgrading was successfully updated.' }
        format.json { render :show, status: :ok, location: @beltgrading }
      else
        format.html { render :edit }
        format.json { render json: @beltgrading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beltgradings/1
  # DELETE /beltgradings/1.json
  def destroy
    @beltgrading.destroy
    respond_to do |format|
      format.html { redirect_to beltgradings_url, notice: 'Beltgrading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beltgrading
      @beltgrading = Beltgrading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beltgrading_params
      params.require(:beltgrading).permit(:status, :type, :location, :event_date, :user_id)
    end
end
