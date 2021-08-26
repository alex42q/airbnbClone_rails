class Api::V1::LeavepantouController < ApplicationController

    def createNewLeave
        @leave = Leavepantou.new(leave_params)
        if @leave.save
            render json: @leave, status: 201
        else
            render json: {error: "Error on create leavepantou"}
        end
    end

    def showLeaves
        @leave = Leavepantou.all
        render json: @leave, status: 201
    end

    private

    def leave_params
        params.require(:leavepantou).permit(:title, :image)
    end

end
