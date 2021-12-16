require 'pry'

class Api::V1::SkillsController < ApplicationController

    def index
        skills = Skill.all
        render json: SkillSerializer.new(skills)
    end

    # def show
    #     skill = Skill.find_by(id: params[:id])
    #     render json: skill
    # end

    # def create
    #     skill = Skill.new(skill_params)
    #         if @skill.save
    #             render json: SkillSerializer.new(skill), status: :accepted
    #         else 
    #             render json: {errors: skill.errors.full_messages}, status: :unprocessible_entity
    #         end
    # end

    # def show
    #     skill = Skill.find_by(id: params[:id])
    #     options = {
    #       include: [:task]
    #     }
    #     render json: SkillSerializer.new(skill, options)
    #   end
      

    # private

    # def skill_params
    #     parmas.require(:skill).permit(:name, :image_url, :experience, :level)
    # end

    
end
