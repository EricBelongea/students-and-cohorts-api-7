class CohortSerializer
  include JSONAPI::Serializer
  attributes :name, :start_date, :graduation_date

  ### This relations is also returned in the JSON data. 
  # has_many :students

  attribute :number_of_students do |object|
    object.students.count
  end

  attribute :status do |object|
    if Date.current < object.start_date
      status = "Future"
    elsif Date.current > object.start_date && Date.current < object.graduation_date
      staus = "Current"
    else
      status = "Graduated"
    end
    status
  end
end