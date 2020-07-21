class NursesController < ApplicationController 
    before_action :check_for_logged_in

    def index 
        @nurses = Nurse.all 
    end 

    def show 
        @nurse = Nurse.find_by(id:params[:id])
    end 

    private 

    
end 