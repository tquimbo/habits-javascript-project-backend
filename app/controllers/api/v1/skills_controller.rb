require 'pry'

class Api::V1::SkillsController < ApplicationController

    def index
        skills = Skill.all
        render json: SkillSerializer.new(skills)
    end

    def show
        skill = Skill.find(params[:id])
        render json: SkillSerializer.new(skill)
      end

    def create
        skill = Skill.new(skill_params)
            if skill.save
                render json: SkillSerializer.new(skill), status: :accepted
            else 
                render json: {errors: skill.errors.full_messages}, status: :unprocessible_entity
            end
    end

    private

    def skill_params
        params.require(:skill).permit(:name, :image_url)
    end

    
end
