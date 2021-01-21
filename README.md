# Tech University
This web app demos a university site where students can login, and enroll in courses. They have a simple profile that shows course enrollment.

My intent was to build the back-end using TDD, and Materialize as the front-end, prompted by the story in the third project in Mashrur Hossain's Complete Ruby on Rails developer course through Udemy. It was built in Ruby 2.6.3, Rails 5.2.4.4 with a SQLite3 db in development.

I decided that TDD was too much right now, and decided to add the tests in later.

Prompted by this, I will make Students and Courses models, with Enrollments being a joint table. Using devise for the users makes sense so they can change passwords easily, and data is protected.

Things Considered: Are the users only students or should we cover teachers and other roles? Will the course instructor be listed? TA? Max/min enrollment? Uniqueness of course name is not specified.

These questions aren't addressed in the model shown, so can be add ons later. I'll just build a MVP, without testing, as practice for what I've learned so far in Rails.  

It was tested on Chrome and Safari browsers.
## Steps Followed

* Build a Student model: names, email, 
* Pages- about
* Build a Course model: course_no (CSXXX), name, description

* Edit Profile (name, email, submit button)

## To Run App on your local machine:

From the terminal: Clone the repo and change to that directory:
```
$ git clone https://github.com/laurieroy/rails-tech-univ
```

Install the gems locally:
```
$ bundle install
```

Create databases: 
```
$ rails db:create
```

Run migrations:
```
$ rails db:migrate
```
<!-- 
Seed database with initial 9 recipes: (optional). It runs the code found in `~/rails_react_recipe/db/seeds.rb`.
```
$ rails db:seed
``` -->

## Run
To run your server locally
```
$ rails s
```

By default the application will listen on port 3000. Nav to http://localhost:3000 to see the app in the browser.

To shut down the server use `Ctrl-C`

### TODO: