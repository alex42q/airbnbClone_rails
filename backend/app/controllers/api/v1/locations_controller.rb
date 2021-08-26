class Api::V1::LocationsController < ApplicationController

    def createLocation
        @location = Location.new(location_params)
        if @location.save
            render json: @location, status: 201
        else
            render json: {erro:"Error create location"}
        end
    end

    def showLocations
        @location = Location.all
        render json: @location, status: 201
    end

    private

    def location_params
        params.require(:location).permit(:name, :image)
    end

end
