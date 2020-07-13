class DoctorsController < ApplicationController 
    def index 
        @doctors = Doctor.all
    end 
    
    def show 
        @doctor = Doctor.find_by(id:params[:id])
    end 

    def surgeon 
        @doctors = Doctor.surgeon
        render :index
    end 

    def pediatrics
        @doctors = Doctor.pediatrics
        render :index
    end 
end 