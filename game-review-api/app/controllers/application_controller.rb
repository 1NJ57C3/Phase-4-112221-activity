class ApplicationController < ActionController::API
    include ActionController::Cookies
    before_action :authenticate_user

    def current_user
        User.find_by(id: session[:current_user])
    end

    def authenticate_user
        render json: { error: "Unauthorized" }, status: 401 unless current_user
    end
end
