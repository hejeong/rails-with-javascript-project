class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :description
end
