class Api::V1::TasksController < ApplicationController

    def index
        tasks = Task.all
        render json: task
    end

    def create
        task = Task.new(task_params)
            if task.save
                render json: task, status: :accepted
            else 
                render json: {errors: task.errors.full_messages}, status: :unprocessible_entity
            end
    end

    private

    def task_params
        parmas.require(:task).permit(:description, :point, :complete)
    end


end
