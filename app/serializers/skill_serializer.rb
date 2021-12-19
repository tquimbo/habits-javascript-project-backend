class SkillSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :level
end
