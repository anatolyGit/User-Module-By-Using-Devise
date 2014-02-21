class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation     
has_many :authored_courses, class_name: 'Course', foreign_key: 'author_id', dependent: :destroy

has_many :course_relationships, foreign_key: "follower_id", dependent: :destroy
has_many :followed_courses, through: :course_relationships, source: :followed_course

  
end
