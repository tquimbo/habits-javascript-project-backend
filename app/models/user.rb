class User < ApplicationRecord
    has_many :habits
    has_many :skills
    has_many :tasks
end
