class TutorSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :experience
  belongs_to :course
end
