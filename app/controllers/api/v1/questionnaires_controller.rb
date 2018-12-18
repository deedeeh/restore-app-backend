class Api::V1::QuestionnairesController < ApplicationController
    before_action :find_questionnaire, only: [:show, :update]

    def show 
        if @questionnaire 
            render json: @questionnaire
        else
            render json: {error: 'Questionnaire was not found'}, status: 404
        end
    end

    def create 
        @questionnaire = Questionnaire.new(questionnaire_params)
        if @questionnaire.save 
            render json: @questionnaire
        else
            render json: {error: 'Unable to create this questionnaire'}, status: 400
        end
    end 

    def update 
        @questionnaire.update(questionnaire_params)
        if @questionnaire.save 
            render json: @questionnaire, status: 202
        else
            render json: {errors: @questionnaire.errors.full_messages}, status: 422
        end
    end

    private 

    def questionnaire_params 
        params.require(:questionnaire).permit(:user_id, :job_title, :working_hours_from, :take_breaks, :breaks_quantity, :break_length, :working_hours_to)
    end

    def find_questionnaire
        @questionnaire = Questionnaire.find(params[:id])
    end
end
