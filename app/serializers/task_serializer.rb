class TaskSerializer < ActiveModel::Serializer
  attributes :id, :description, :point, :complete
end
