class PatientsController < ApplicationController
    before_action :set_patient, only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource

    def index
        @patients = Patient.all
    end

    def show
    end

    def new
        @patient = Patient.new
    end

    def create
        @patient = Patient.new(patient_params)
        if @patient.save
            redirect_to @patient, notice: 'Patient was successfully created.'
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @patient.update(patient_params)
            redirect_to @patient, notice: 'Patient was successfully updated.'
        else
            render :edit
        end
    end

    def destroy
        @patient = Patient.find(params[:id])
        if @patient.destroy
            redirect_to patients_path, notice: 'Patient was successfully deleted.'
        else
            redirect_to @patient, alert: 'Unable to delete patient.'
        end
    end

    private

    def set_patient
        @patient = Patient.find(params[:id])
    end

    def patient_params
        params.require(:patient).permit(:name, :age)
    end
end