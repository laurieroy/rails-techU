# Tech Univerisy
This web app demos a university site where students can login, and enroll in courses. They have a simple profile that shows course enrollment.

My intent is to build the back-end using TDD, and Materialize as the front-end, prompted by the story in the third project in Mashrur Hossain's Complete Ruby on Rails developer course through Udemy. It was built in Ruby 2.6.3, Rails 5.2.4.4 with a SQLite3 db in development.

Prompted by this, I will make Students and Courses models, with Enrollments being a joint table. Using devise for the users makes sense so they can change passwords easily, and data is protected.

Questions: Are the users only students or should we cover teachers and other roles? Will the course instructor be listed? TA? Max/min enrollment? Uniqueness of course name is not specified. I'll come back to testing...

These questions aren't addressed in the model shown, so can be add ons later. I'll just build a MVP, as practice for what I've learned so far in Rails.  

It was tested on Chrome and Safari browsers.

* Build a User model, name, email, join table (enrolled_courses), about
* Build a Course model w/ User as foreign key ID: CSXXX, name, enroll form, about page
* Edit Profile (name, email, submit button)
