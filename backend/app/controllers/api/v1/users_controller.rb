require 'bcrypt'

class Api::V1::UsersController < ApplicationController
    
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.new(user_params)
        password_salt = BCrypt::Engine.generate_salt
        password_hash = BCrypt::Engine.hash_secret(@user.password, password_salt)
        
        if @user.save
            @user.password = password_hash
            @user.salt = password_salt
            @user.save
            render json: @user, status: 201
        else
            render error: {error:"Error"}, status:400
        end
    end

    def update
        @user = User.find(params[:id])
        if @user
            @user.update(user_params)
            render json: {data:@user}, status:201
        else
            render json: {error:"error on update"}, status:400
        end
    end

    def destroy
        @user = User.find(params[:id])
        if @user
            @user.destroy
            render json: {data:"destroyed"}, status:200
        else
            render json: {error:"error on destry"}
        end
    end

    private

    def user_params
        params.require(:user).permit(:firstname, :lastname, :email, :password, :salt)
    end
end
