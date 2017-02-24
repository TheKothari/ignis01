class OtherBuildingsController < ApplicationController
  before_action :set_other_building, only: [:show, :edit, :update, :destroy]

  # GET /other_buildings
  # GET /other_buildings.json
  def index
    @other_buildings = OtherBuilding.all
  end

  # GET /other_buildings/1
  # GET /other_buildings/1.json
  def show
  end

  # GET /other_buildings/new
  def new
    @other_building = OtherBuilding.new
  end

  # GET /other_buildings/1/edit
  def edit
  end

  # POST /other_buildings
  # POST /other_buildings.json
  def create
    @other_building = OtherBuilding.new(other_building_params)

    respond_to do |format|
      if @other_building.save
        format.html { redirect_to @other_building, notice: 'Other building was successfully created.' }
        format.json { render :show, status: :created, location: @other_building }
      else
        format.html { render :new }
        format.json { render json: @other_building.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /other_buildings/1
  # PATCH/PUT /other_buildings/1.json
  def update
    respond_to do |format|
      if @other_building.update(other_building_params)
        format.html { redirect_to @other_building, notice: 'Other building was successfully updated.' }
        format.json { render :show, status: :ok, location: @other_building }
      else
        format.html { render :edit }
        format.json { render json: @other_building.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /other_buildings/1
  # DELETE /other_buildings/1.json
  def destroy
    @other_building.destroy
    respond_to do |format|
      format.html { redirect_to other_buildings_url, notice: 'Other building was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other_building
      @other_building = OtherBuilding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def other_building_params
      params.require(:other_building).permit(:Breakroom, :TelephoneRoom, :Restroom, :FID)
    end
end
