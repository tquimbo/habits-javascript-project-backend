class UserSerializer < ActiveModel::Serializer
    #include FastJsonapi::ObjectSerializer
    attributes :id, :username, :level, :experience
end
  