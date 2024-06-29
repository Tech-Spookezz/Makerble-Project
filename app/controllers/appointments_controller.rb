class AppointmentsController < ApplicationController
    def new
        @patient = Patient.find(params[:patient_id])
        @appointment = @patient.appointments.new
    end

    def create
        @patient = Patient.find(params[:patient_id])
        @appointment = @patient.appointments.new(appointment_params)
        if @appointment.save
            redirect_to @patient, notice: 'Appointment was successfully created.'
        else
            render :new
        end
    end

    def show
        @patient = Patient.find(params[:patient_id])
        @appointment = @patient.appointments.find(params[:id])
    end
    
    def destroy
        @patient = Patient.find(params[:patient_id])
        @appointment = @patient.appointments.find(params[:id])
        @appointment.destroy
        
        Rails.logger.debug "Attempting to destroy appointment #{@appointment.id}"
        
        if @appointment.destroy
            Rails.logger.debug "Appointment destroyed successfully"
            redirect_to patient_path(@patient), notice: 'Appointment was successfully canceled.'
        else
            Rails.logger.debug "Failed to destroy appointment: #{@appointment.errors.full_messages}"
            redirect_to patient_appointment_path(@patient, @appointment), alert: 'Unable to cancel appointment.'
        end
        rescue => e
            Rails.logger.error "Error destroying appointment: #{e.message}"
            redirect_to patient_appointment_path(@patient, @appointment), alert: 'An error occurred while canceling the appointment.'
        end

    private

    def appointment_params
        params.require(:appointment).permit(:appointment_date)
    end
end