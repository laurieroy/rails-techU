class Course < ApplicationRecord
	validates :name, presence: true, length: { minimum: 5, max: 50 }
	validates :course_no, presence: true, length: { minimum: 5, max: 5 }
	validates :description, presence: true, length: { minimum: 10, max: 300 }
	validates_uniqueness_of :name, :course_no
end