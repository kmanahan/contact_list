class DoctorsController < ApplicationController 
    before_action :check_for_logged_in

    def index 
        @doctors = Doctor.all
        if params[:search]
            @doctors = Doctor.search(params[:search])
        else 
            @doctors = Doctor.all
        end
    end 
    
    def show 
        @doctor = Doctor.find_by(id:params[:id])
    end 

    private

    # def doctor_params 
    #     params.require(:doctor).permit(:name, :specialty, :phone_number, :search)
    # end 
end 