class TaskSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :description, :point, :complete
end
