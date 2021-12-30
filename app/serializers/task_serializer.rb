class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :point, :complete, :skill_id
  belongs_to :skill
end
