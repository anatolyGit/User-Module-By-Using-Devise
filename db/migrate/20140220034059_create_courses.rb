class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :author_id
      t.string :title
      t.text :description
      t.string :featured_as
      t.string :level_of_studies
      t.string :category
      t.float :price
      t.integer :rating

      t.timestamps
    end
  end
end
