class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [ :show, :edit, :update, :destroy]
  before_action :find_dog
 
    def new
       @appointment = Appointment.new(dog_id: current_user.id)
    end

    def create
      @appointment = Appointment.create(appointment_params)
      @dog = @appointment.dog
      if @appointment.valid?
         @appointment.save
        redirect_to dog_appointments_path(@appointment)
      else
        render :new
      end
    end

    def index
         @appointments =  Appointment.all
    end

    def show
   
    end

    def edit
    end

    def update
      if @appointment.dog.user_id == current_user.id && @appointment.update(appointment_params)
        redirect_to  dog_appointments_path(@appointment)
      else
        flash[:notice] = "This appointment can't be edited 🐾"
        redirect_to dog_appointments_path(@appointment) #CHeck route
      end
    end


    def destroy
        @appointment.destroy
        flash[:notice] = "Your Appointment was canceled please reshedule soon🐾😁!"
        redirect_to dog_appointments_path(@appointment)
    end


  private

    def appointment_params
      params.require(:appointment).permit(:dog_id, :symptoms, :agenda, :date, :veterinarian_id)
    end

    def find_appointment
     @appointment = Appointment.find(params[:id]) 
    end

    def find_dog
      @dog = Dog.find_by(id: params[:dog_id])
    end
end