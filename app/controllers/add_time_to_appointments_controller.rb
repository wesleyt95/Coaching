class AddTimeToAppointmentsController < ApplicationController
  before_action :set_add_time_to_appointment, only: [:show, :edit, :update, :destroy]

  # GET /add_time_to_appointments
  # GET /add_time_to_appointments.json
  def index
    @add_time_to_appointments = AddTimeToAppointment.all
  end

  # GET /add_time_to_appointments/1
  # GET /add_time_to_appointments/1.json
  def show
  end

  # GET /add_time_to_appointments/new
  def new
    @add_time_to_appointment = AddTimeToAppointment.new
  end

  # GET /add_time_to_appointments/1/edit
  def edit
  end

  # POST /add_time_to_appointments
  # POST /add_time_to_appointments.json
  def create
    @add_time_to_appointment = AddTimeToAppointment.new(add_time_to_appointment_params)

    respond_to do |format|
      if @add_time_to_appointment.save
        format.html { redirect_to @add_time_to_appointment, notice: 'Add time to appointment was successfully created.' }
        format.json { render :show, status: :created, location: @add_time_to_appointment }
      else
        format.html { render :new }
        format.json { render json: @add_time_to_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_time_to_appointments/1
  # PATCH/PUT /add_time_to_appointments/1.json
  def update
    respond_to do |format|
      if @add_time_to_appointment.update(add_time_to_appointment_params)
        format.html { redirect_to @add_time_to_appointment, notice: 'Add time to appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_time_to_appointment }
      else
        format.html { render :edit }
        format.json { render json: @add_time_to_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_time_to_appointments/1
  # DELETE /add_time_to_appointments/1.json
  def destroy
    @add_time_to_appointment.destroy
    respond_to do |format|
      format.html { redirect_to add_time_to_appointments_url, notice: 'Add time to appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_time_to_appointment
      @add_time_to_appointment = AddTimeToAppointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_time_to_appointment_params
      params.require(:add_time_to_appointment).permit(:time)
    end
end
