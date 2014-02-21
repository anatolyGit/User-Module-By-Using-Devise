class CreateCourseRelationships < ActiveRecord::Migration
  def change
    create_table :course_relationships do |t|
      t.integer :student_id
      t.integer :followed_course_id
      t.integer :individual_rating
      t.integer :personal_score

      t.timestamps
    end
  end
end
