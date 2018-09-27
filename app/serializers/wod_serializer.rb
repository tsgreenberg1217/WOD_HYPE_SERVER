class WodSerializer < ActiveModel::Serializer
  attributes :id, :name, :rounds, :reps, :time, :date, :notes, :weight, :cat
end
