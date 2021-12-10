class Api::V1::SkillsController < ApplicationController

    def index
        skills = Skill.all
        render json: skill
    end

    def create
        skill = Skill.new(skill_params)
            if skill.save
                render json: skill, status: :accepted
            else 
                render json: {errors: skill.errors.full_messages}, status: :unprocessible_entity
            end
    end

    private

    def skill_params
        parmas.require(:skill).permit(:name, :image_url, :experience, :level)

    end

    
end
