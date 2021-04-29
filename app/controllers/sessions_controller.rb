class SessionsController < ApplicationController
    #only use for signing a user in
    def login 
        @user = User.new
    end

    def create
        @user = User.find_by_username(params[:username])

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :login
        end
    end

    def destroy
        session.clear
        redirect_to login_path
    end


end
