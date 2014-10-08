class ParkingRestrictionsController < ApplicationController
  before_action :set_parking_restriction, only: [:show, :edit, :update, :destroy]

  # GET /parking_restrictions
  # GET /parking_restrictions.json
  def index
    @parking_restrictions = ParkingRestriction.all
  end

  # GET /parking_restrictions/1
  # GET /parking_restrictions/1.json
  def show
  end

  # GET /parking_restrictions/new
  def new
    @parking_restriction = ParkingRestriction.new
  end

  # GET /parking_restrictions/1/edit
  def edit
  end

  # POST /parking_restrictions
  # POST /parking_restrictions.json
  def create
    @parking_restriction = ParkingRestriction.new(parking_restriction_params)

    respond_to do |format|
      if @parking_restriction.save
        format.html { redirect_to @parking_restriction, notice: 'Parking restriction was successfully created.' }
        format.json { render action: 'show', status: :created, location: @parking_restriction }
      else
        format.html { render action: 'new' }
        format.json { render json: @parking_restriction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_restrictions/1
  # PATCH/PUT /parking_restrictions/1.json
  def update
    respond_to do |format|
      if @parking_restriction.update(parking_restriction_params)
        format.html { redirect_to @parking_restriction, notice: 'Parking restriction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @parking_restriction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_restrictions/1
  # DELETE /parking_restrictions/1.json
  def destroy
    @parking_restriction.destroy
    respond_to do |format|
      format.html { redirect_to parking_restrictions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_restriction
      @parking_restriction = ParkingRestriction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parking_restriction_params
      params.require(:parking_restriction).permit(:parking_spot_id, :cost_per_hour, :beg_time_restriction, :end_time_restriction, :time_limit_hour, :time_limit_min, :active_monday, :active_tuesday, :active_wednesday, :active_thursday, :active_friday, :active_saturday, :active_sunday)
    end
end
