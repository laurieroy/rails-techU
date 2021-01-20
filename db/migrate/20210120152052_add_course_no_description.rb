class AddCourseNoDescription < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :course_no, :string
    add_column :courses, :description, :text
  end
end
