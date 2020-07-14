class PatientsController < ApplicationController 
    before_action :check_for_logged_in

    def index 
        get_room
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

    # def edit
    #     get_room
    # end
    
    #   def update
    #     get_room
    #     if @patient.update(patient_params)
    #       redirect_to room_patient_path(@patient)
    #     else
    #       render :edit
    #     end
    #   end
    
    #   def destroy
    #     get_room
    #     @patient.destroy
    #     redirect_to room_patients_path
    #   end
    

    def expired
        @patients = Patient.all
        @patients = @patients.is_expired
            render :expired
    end 
    
    private 

    def get_room
        @room ||= Room.find_by(id:params[:room_id])
    end  

    def patient_params 
        params.require(:patient).permit(:doctor_ids, :nurse_ids, :first_name, :last_name, :room_id, :status, :diagnosis, :discharged, :expired )
    end 
end 