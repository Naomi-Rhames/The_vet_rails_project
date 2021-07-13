class AppointmentsController < ApplicationController

    def new
        @appointment = Appointment.new
    end

    def create
      @appointment = Appointment.create(appointment_params)
      @appointment.user_id == current_user.id
      if @appointment.save
        redirect_to appointments_path
      else
        render :new
      end
    end

    def index
        @appointments = Appointment.all
    end



private
   def appointment_params
    params.require(:appointment).permit(:dogs_name, :dog_breed, :agenda, :symptoms, :date, :dog_id, :veterinarian_id)
   end


end
