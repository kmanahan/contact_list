class NursesController < ApplicationController 
    def index 
        @nurses = Nurses.all 
    end 
end 