class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description
end
