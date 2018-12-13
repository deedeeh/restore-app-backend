class Api::V1::TasksController < ApplicationController

    def show 
        @task = Task.find(params[:id])
        if @task 
            render json: @task
        else
            render json: {error: 'Task was not found'}, status: 404
        end
    end

    def create 
        @task = Task.new(task_params)
        if @task.save 
            render json: @task
        else
            render json: {error: 'Unable to create this task'}, status: 400
        end
    end 

    private 

    def task_params 
        params.require(:task).permit(:user_id, :task_type, :task_quantity, :each_task_length)
    end

end
