class UnitMeasurementsController < ApplicationController
  before_action :set_unit_measurement, only: [:show, :edit, :update, :destroy]

  # GET /unit_measurements
  # GET /unit_measurements.json
  def index
    @unit_measurements = UnitMeasurement.all
  end

  # GET /unit_measurements/1
  # GET /unit_measurements/1.json
  def show
  end

  # GET /unit_measurements/new
  def new
    @unit_measurement = UnitMeasurement.new
  end

  # GET /unit_measurements/1/edit
  def edit
  end

  # POST /unit_measurements
  # POST /unit_measurements.json
  def create
    @unit_measurement = UnitMeasurement.new(unit_measurement_params)

    respond_to do |format|
      if @unit_measurement.save
        format.html { redirect_to @unit_measurement, notice: 'Unit measurement was successfully created.' }
        format.json { render :show, status: :created, location: @unit_measurement }
      else
        format.html { render :new }
        format.json { render json: @unit_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_measurements/1
  # PATCH/PUT /unit_measurements/1.json
  def update
    respond_to do |format|
      if @unit_measurement.update(unit_measurement_params)
        format.html { redirect_to @unit_measurement, notice: 'Unit measurement was successfully updated.' }
        format.json { render :show, status: :ok, location: @unit_measurement }
      else
        format.html { render :edit }
        format.json { render json: @unit_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_measurements/1
  # DELETE /unit_measurements/1.json
  def destroy
    @unit_measurement.destroy
    respond_to do |format|
      format.html { redirect_to unit_measurements_url, notice: 'Unit measurement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_measurement
      @unit_measurement = UnitMeasurement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unit_measurement_params
      params.require(:unit_measurement).permit(:unit_name, :description)
    end
end
