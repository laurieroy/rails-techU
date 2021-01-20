class Course < ApplicationRecord
	validates :name, presence: true
	validates_uniqueness_of :name 
#CS111 Intro to Computer Science
# An in-depth look at Computer Science as a field and programming in general



end