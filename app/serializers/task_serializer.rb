class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :point, :complete
end
