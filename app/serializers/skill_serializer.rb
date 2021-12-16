class SkillSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :experience, :level
end
