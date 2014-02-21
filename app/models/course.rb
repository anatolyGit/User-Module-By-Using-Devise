class Course < ActiveRecord::Base
belongs_to :author, :class_name => 'User'
has_many :course_relationships, foreign_key: "followed_course_id", dependent: :destroy
has_many :students, through: :course_relationships, source: :student

end
