class SkillSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :level
  has_many :tasks
end
