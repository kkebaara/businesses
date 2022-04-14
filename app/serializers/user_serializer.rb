class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :admin, :email
end
