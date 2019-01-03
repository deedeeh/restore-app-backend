class Api::V1::BreaksController < ApplicationController

    def index 
        @user = get_current_user
        @breaks = Break.where(user: @user)
        render json: @breaks 
    end

    def create 
        @user = get_current_user
        @break = Break.new(break_params)
        @break.user = @user
        if @break.save 
            render json: @break
        else
            render json: {error: 'Unable to create this break'}, status: 400
        end
    end 

    private 

    def break_params 
        params.require(:break).permit(:start, :end, :the_date, :completed)
    end
end
