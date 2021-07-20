class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :destroy]
    def new
        # binding.pry
        @appointment = Appointment.new
    end

    def create
      
      @appointment = Appointment.create(appointment_params)
      @dog = @appointment.dog
      if @appointment.save
        redirect_to dog_appointments_path(@dog)
      else
        render :new
      end
    end

    def index
        @appointments = Appointment.all
        # binding.pry
    end

    def show
    end

    def edit
    end

    def update
      if @appointment.dog.user_id == current_user.id && @appointment.update(appointment_params)
        redirect_to  dog_appointment_path(@appointment)
      else
        
        render :edit
        #  binding.pry
      end
    end

    def destroy
        @appointment.destroy
        flash[:notice] = "Your Appointment was canceled please reshedule soon🐾😁!"
        redirect_to dog_appointments_path(@appointment)
    end

private

   def appointment_params
    params.require(:appointment).permit(:symptoms, :agenda, :date, :dog_id, :veterinarian_id)
   end

   def find_appointment
    @appointment = Appointment.find_by_id(params[:id])
   end
end
