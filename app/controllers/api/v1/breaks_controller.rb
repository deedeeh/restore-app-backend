class Api::V1::BreaksController < ApplicationController

    def index 
        @breaks = Break.all
        render json: @breaks 
    end

    def create 
        @user = User.find(params[:id])
        @break = Break.new(user: @user, start: nil, end: nil, the_date: '', completed: nil)
        if @break.save 
            render json: @break
        else
            render json: {error: 'Unable to create this break'}, status: 400
        end
    end 

    private 

    def break_params 
        params.require(:break).permit(:user_id, :start, :end, :the_date, :completed)
    end
end
