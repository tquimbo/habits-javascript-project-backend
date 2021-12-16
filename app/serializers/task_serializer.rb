class TaskSerializer < ActiveModel::Serializer
  #include FastJsonapi::ObjectSerializer
  attributes :id, :description, :point, :complete
  belongs_to :skill
  belongs_to :user
end
