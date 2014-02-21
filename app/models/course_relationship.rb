class CourseRelationship < ActiveRecord::Base
belongs_to :student, class_name: "User"
belongs_to :followed_course, class_name: "Course"
end
