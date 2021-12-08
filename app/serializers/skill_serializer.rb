class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :experience, :level
end
