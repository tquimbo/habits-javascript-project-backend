class UserSerializer
  #include FastJsonapi::ObjectSerializer
  #attributes :username, :password_digest, :level, :experience
end
