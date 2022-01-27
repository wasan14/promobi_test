class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :cost
  has_many :tutors
end
