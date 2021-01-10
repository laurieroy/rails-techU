require 'test_helper'

class CourseTest < ActiveSupport::TestCase
	def setup
		@course = Course.new(name: "Intro to Computer Science")
	end

	test "course should be valid" do
		assert @course.valid?
	end

	test "course ID number should be present" do
		assert @course.
	end

	test "course number should have three digits" do

	end

	test "course number should start with CS" do

	end

	test "name should be present" do
		@course.name = " "
		assert_not @course.valid?
	end
# not sure about this one
	test "name should be unique" do
		@course.save
		@course2 = Course.new(name: "Intro to Computer Science")
		assert_not @course2.valid?
	end

	test "name should be not be too short" do

	end

	test "name should be not be too long" do

	end
end