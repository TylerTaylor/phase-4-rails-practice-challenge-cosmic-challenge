class ScientistWithPlanetsSerializer < ActiveModel::Serializer
  attributes :id, :name, :field_of_study, :avatar

  # how to include associated objects?
  has_many :planets
end
