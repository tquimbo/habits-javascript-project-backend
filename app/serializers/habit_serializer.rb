class HabitSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :description, :plus, :minus, :level, :color
end
