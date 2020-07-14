class RoomsController < ApplicationController 
    before_action :check_for_logged_in
    
    def index 
        @rooms = Room.all 
    end 

    def new 
        @room = Room.new
    end 

    def create 
        @room = Room.new(room_params)
        if @room.save 
            redirect_to rooms_path(@room)
        else 
            render :new 
        end
    end 

    private 

    def room_params 
        params.require(:room).permit(:room_number, :phone_number) 
    end 
end 
