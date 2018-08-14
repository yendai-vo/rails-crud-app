class AirlinesController < ApplicationController
    helper_method :selected_airline

    def index
        @airlines = Airline.all
    end

    def show
        
    end

    def new

    end

    def create
        # byebug
        airline = Airline.create(airline_params)
        redirect_to airline
    end

    def edit 
        
    end

    def update
        selected_airline.update(airline_params)
        redirect_to selected_airline
    end

    def destroy
        selected_airline.destroy
        redirect_to airlines_path
    end

    def selected_airline
        Airline.find(params[:id])
    end

    private
    def airline_params
        params.require(:airline).permit(:name, :description, :number_of_planes, :active)
    end

end
