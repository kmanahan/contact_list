class PatientsController < ApplicationController 
    before_action :check_for_logged_in

    def index 
        get_room
        @patients = Patient.all
        if params[:expired]
            @patients.expired(params[:expired])
        else 
            @patients = Patient.all 
        end
    end 
   
    def show
        @patient = Patient.find(params[:id])
    end 
    def new 
        get_room
        redirect_to rooms_path if !@room
        @patient = Patient.new
    end 
     
    def create 
        @room = Room.find_by(id: params[:patient][:room_id])
        @patient = Patient.new(patient_params)
        if @patient.save
            redirect_to room_patients_path(@room, @patient)
        else 
            render :new
        end
    end 

    def expired
        @patient = Patient.all
        if params[:expired]
            @patient = expired(params[:expired])
        else 
            @patient = Patient.all 
        end
    end 
    
    private 

    def get_room
        @room ||= Room.find_by(id:params[:room_id])
    end  

    def patient_params 
        params.require(:patient).permit(:doctor_ids, :nurse_ids, :first_name, :last_name, :room_id, :status, :diagnosis, :discharged, :expired )
    end 
end 