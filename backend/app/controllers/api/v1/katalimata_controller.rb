class Api::V1::KatalimataController < ApplicationController

    def createNewKatalima
        @katals = Katal.new(katalimata_paramss)
        if @katals.save
            render json: @katals, status: 201
        else
            render json: {error:"Error on creation"}
        end
    end

    def showKatalsByLocation
        @katal = Katal.find_by(locationId: params[:locationId])
        if @katal
            render json: @katal, status: 200
        else
            render json: {error:"No catal found"}
        end
    end

    private

    def katalimata_paramss
        params.require(:katalimatum).permit(:name, :locationId, :leavepantouId, :userId, :description)
    end

end
