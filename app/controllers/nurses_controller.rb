class NursesController < ApplicationController 
    def index 
        @nurses = Nurses.all 
    end 

    def new 
        @nurse = Nurse.new
    end 

    def create 
        @nurse = Nurse.create
    end 

end 