class AddCourseCodeToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :course_code, :string
  end
end
