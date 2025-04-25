class PatientAppointmentsController < ApplicationController
 def new
    @patient_appointment = PatientAppointment.new
  end

  def create
    @patient_appointment = PatientAppointment.new(patient_appointment_params)
    if @patient_appointment.save
      redirect_to patient_appointments_path, notice: "Patient_appointments registered successfully"
    else
      render :new
    end
  end

  def index
    @patient_appointment = PatientAppointment.all.order(created_at: :desc)
  end

  private

  def patient_appointment_params
  params.require(:patient_appointment).permit(:name, :age, :consulting_problem, :date, :Time)
  end

  def edit
  @patient_appointment = Patient_appointment.find(params[:id])
end

def update
  @patient_appointment = Patient_appointment.find(params[:id])
  if @patient_appointment.update(patient_appointment_params)
    redirect_to patient_appointment_path, notice: "Patient appointment updated successfully"
  else
    render :edit
  end
end

 def destroy
  @patient_appointment = Patient_appointment.find(params[:id])
  @patient_appointment.destroy
  redirect_to patient_appointment_path, notice: "Patient appointment deleted"
  end
end