class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :destroy]
    def new
        # binding.pry
        @appointment = Appointment.new
    end

    def create
      @appointment = Appointment.create(appointment_params)
      if @appointment.save
        redirect_to appointment_path(@appointment)
      else
        render :new
      end
    end

    def index
        @appointments = Appointment.all
    end

    def show
    end

    def edit
    end

    def update
      if @appointment.dog.user_id == current_user.id && @appointment.update(appointment_params)
        redirect_to  appointments_path
      else
        
        render :edit
        #  binding.pry
      end
    end

    def destroy
        @appointment.destroy
        flash[:notice] = "Your Appointment was canceled please reshedule soon🐾😁!"
        redirect_to appointments_path(@appointment)
    end

private

   def appointment_params
    params.require(:appointment).permit(:symptoms, :agenda, :date, :dog_id, :veterinarian_id)
   end

   def find_appointment
    @appointment = Appointment.find(params[:id])
   end
end
