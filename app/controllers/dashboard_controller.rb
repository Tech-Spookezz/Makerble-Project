class DashboardController < ApplicationController
  def index
    @patients = Patient.all
    @patient_count_by_day = Patient.group("DATE(created_at)").count
    
    # Debugging: Output the patient count by day to the console
    Rails.logger.debug @patient_count_by_day.inspect
  end
end
