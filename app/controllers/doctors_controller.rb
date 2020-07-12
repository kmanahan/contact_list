class DoctorsController < ApplicationController 
    def index 
        @doctors = Doctor.all
    end 

    def new 
        @doctor = Doctor.new
    end 

    def create 
        @doctor = Doctor.create
    end 

end 