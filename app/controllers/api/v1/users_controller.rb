class Api::V1::UsersController < ApplicationController

    def show 
        @user = User.find(params[:id])
        render json: @user
    end

    def login 
        @user = User.find_by(username: user_params[:username])
        if @user && @user.authenticate(user_params[:password])
            render json: {user: serialize_user(@user), token: issue_token({id: @user.id})}
        else
            render json: {error: 'User was not found'}, status: 404
        end
    end

    def signup 
        @user = User.new(user_params)
        if @user.save
            Questionnaire.create( user: @user,
            job_title: '',
            working_hours_from: '',
            working_hours_to: '',
            take_breaks: false,
            breaks_interval: nil,
            break_length: nil
            )
            render json: {user: serialize_user(@user), token: issue_token({id: @user.id})}
        else
            render json: {error: 'Unable to create this user'}, status: 400
        end
    end 

    def validate 
        @user = get_current_user
        if @user 
            render json: {user: serialize_user(@user), token: issue_token({id: @user.id})}
        else
            render json: {error: 'User was not found'}, status: 404
        end
    end

    private 

    def user_params 
        params.permit(:username, :name, :password)
    end

    def serialize_user(user)
        ActiveModel::SerializableResource.new(user).serializable_hash
    end

end
