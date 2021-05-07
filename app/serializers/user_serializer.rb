class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :email
  
  has_many :spells
end
