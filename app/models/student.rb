class Student < ApplicationRecord
  before_save { self.email = email.downcase }
	validates :first_name, presence: true, length: { minimum: 2, maximum: 50 }
	validates :last_name, presence: true, length: { minimum: 2, maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: { case_sensitive: false },
						length: { maximum: 105 },
						format: { with: VALID_EMAIL_REGEX }
	has_secure_password
	has_many :course_students
	has_many :courses, through: :course_students
end
