class HabitsController < ApplicationController

    def show
        habit = Habit.find(parmas[:id])
        render json: habit
    end
    
end
