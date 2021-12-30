class Api::V1::TasksController < ApplicationController

#     def index
#         if skill = Skill.find_by_id(params[:skill_id])
#         tasks = Task.all
#         render json: TaskSerializer.new(tasks)
#     end
# end


def index
    tasks = Task.all
    render json: TaskSerializer.new(tasks)
end

    # def new
    #     if skill = Skill.find_by_id(params[:skill_id])
    #       task = skill.tasks.build
    #     else
    #       task = Task.new
    #     end
    #   end


    #   def show
    #     task = Task.find_by(id: params[:id])
    #     skill = Skill.find_by_id(params[:skill_id])
    #   end

#     def index
#         if skill = Skill.find_by_id(params[:skill_id])
#             tasks = skill.tasks
#         # tasks = Task.all
#         render json: TaskSerializer.new(tasks)
#      else
#         tasks = Task.all
#       end
# end

  

    def create
        task = Task.new(task_params)
            if task.save
                render json: TaskSerializer.new(task), status: :accepted
            else 
                render json: {errors: task.errors.full_messages}, status: :unprocessible_entity
            end
    end

    def show
        task = Task.find(params[:id])
        render json: TaskSerializer.new(task)
    end

    private

    def task_params
        params.require(:task).permit(:description, :skill_id)
    end

end
