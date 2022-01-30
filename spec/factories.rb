FactoryGirl.define do
  factory :course do
    name "Test Course"
    description "Ror Course."
    cost 20.0
  end
  factory :tutor do
    course
    name "Rohit wasan"
    age 25
    experience 4
  end
end