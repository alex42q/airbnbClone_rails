require 'bcrypt'

class Api::V1::UserController < ApplicationController

    
    def register
        @user = Alluser.new(user_params)
        password_salt = BCrypt::Engine.generate_salt
        password_hash = BCrypt::Engine.hash_secret(@user.password, password_salt)

        if @user.save
            @user.password = password_hash
            @user.salt = password_salt
            @user.save
            render json: @user, status: 201
        else
            render error: {error:"Error on register"}, status: 400
        end
    end


    private 

    def user_params
        params.require(:user).permit(:firstname, :lastname, :email, :password, :salt, :personaldetails, :homes)
    end
end
