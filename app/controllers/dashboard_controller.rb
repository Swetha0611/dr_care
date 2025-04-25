class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @patients = Patient.all
    @patient_appointment = PatientAppointment.all
  end
end
