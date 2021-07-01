class PatientsController < ApplicationController

    def new
        @patient = Patient.new
    end

    def create
        @patient = Patient.create(patient_params)
    end


end
