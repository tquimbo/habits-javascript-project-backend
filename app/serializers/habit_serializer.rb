class HabitSerializer < ActiveModel::Serializer
  attributes :id, :description, :plus, :minus, :level, :color
end
