class UsersController < ApplicationController
    def sign_in
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            render json: {email: user.email, id: user.id}
        else
          render json: {error: 'Invalid email/password combination.'}, status: 400
    end

    def validate
        user = User.find_by(email: request.headers['Authorization'])
        if user
            render json: {email: user.email, id: user.id}
        else
            render json: {error: 'User not found.'}, status: 400
    end
end

