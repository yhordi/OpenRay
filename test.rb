require_relative 'expectation'
require_relative 'app'
require_relative 'models/student'
require_relative 'models/cohort'
include Expectation


#student assertions
assert_equals Student.find(2000).attributes[:first_name], 'Dejuan', "it returns a student"
assert_equals Student.where('id = 2000').class, Array, "it returns an array"
assert_true Student.all.class == Array
Student.create({id: 1, cohort_id: 1, first_name: "Tiff", last_name: "Kaiser", email:"TiffanyTKaiser@gmail.com", gender: "f", birthdate: "1986-10-01", created_at: Time.now, updated_at: Time.now})
assert_equals Student.find(1).attributes[:first_name], 'Tiff', "confirms new student was created."
#cohort assertions

assert_equals Cohort.find(1).attributes[:name], 'Alpha', "it returns a cohort."