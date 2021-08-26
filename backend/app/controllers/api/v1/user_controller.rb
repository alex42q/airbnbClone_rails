require 'bcrypt'
require 'sqlite3'

class Api::V1::UserController < ApplicationController

    
    def register
        @user = Alluser.new(user_params)
        password_salt = BCrypt::Engine.generate_salt
        password_hash = BCrypt::Engine.hash_secret(@user.password_digest, password_salt)

        if @user.save
            @user.password_digest = password_hash
            @user.salt = password_salt
            @user.save
            render json: @user, status: 201
        else
            render error: {error:"Error on register"}, status: 400
        end
    end

    def login
        user = Alluser.find_by(username: params[:username])
        if user.username && user.authenticate(params[:password_digest])
            token = encode_token({user_id: user.id})
            session[:user_id] = user.id
            render json: {pass:"true", token:token}
        else
            render json:{error:"error"}
        end
    end


    private 

    def user_params
        params.require(:user).permit(:firstname, :lastname, :username, :password_digest, :salt, :personaldetails, :homes)
    end

    def user_pass
        params.require(:user).permit(:password_digest)
    end 

    def user_email
        params.require(:user).permit(:username)
    end 
end
