class PatientsController < ApplicationController
  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
    redirect_to patients_path, notice: "Patient registered successfully"
  else
    render :new
  end
end

  def index
    @patients = Patient.all
  end

   def edit
  @patient = Patient.find(params[:id])
  end

def update
  @patient = Patient.find(params[:id])
  if @patient.update(patient_params)
    redirect_to patients_path, notice: "Patient updated successfully"
  else
    render :edit
  end
end


  def show
    @patient = Patient.find_by(id: params[:id])
    if @patient.nil?
      redirect_to patients_path, alert: "Patient not found."
    end
  end

  def destroy
  @patient = Patient.find(params[:id])
  @patient.destroy
  redirect_to patients_path, notice: 'Patient was successfully deleted.', status: :see_other
end



private

def patient_params
  params.require(:patient).permit(:name, :patient_number, :consultation_problem, :consulting_fees)
  end
end