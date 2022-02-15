class SessionController < ApplicationController
    skip_before_action :authorized_user, only: [:login]

    def login
        u = User.find_by(username: params[:username])
        if u&.authenticate(params[:password])
            session[:current_user] = u.id
            session[:failed_logins] = 0
            render json: u, status: ok
        else
            render json: { error: "Invalid Password and/or Username" }, status: :unauthorized
            session[:failed_logins] += 1
        end
    end

    def logout
        session.delete :current_user
    end
end
