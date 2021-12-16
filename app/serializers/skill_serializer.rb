class SkillSerializer < ActiveModel::Serializer
  #include FastJsonapi::ObjectSerializer
  attributes :id, :name, :image_url, :experience, :level 
  belongs_to :user
end
