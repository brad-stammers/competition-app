class CompetitionSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :sport, :start, :finish
end
