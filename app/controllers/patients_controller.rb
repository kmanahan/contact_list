class PatientsController < ApplicationController 
    def index 
        get_room
    end 
   
    def show
        get_room
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

    def discharged 
        @patients = Patient.discharged
        render :index
    end 

    def expired 
        @patients = Patient.expired
        render :index
    end 

    private 

    def get_room
        @room ||= Room.find_by(id:params[:room_id])
    end  

    def patient_params 
        params.require(:patient).permit(:doctor_ids, :nurse_ids, :first_name, :last_name, :room_id, :status, :diagnosis, :discharged, :expired )
    end 
end 