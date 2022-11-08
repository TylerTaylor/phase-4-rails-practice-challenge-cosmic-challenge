class MissionSerializer < ActiveModel::Serializer
  attributes :id, :planet_id, :scientist_id, :name
end
