# Tech University - WIP

This web app demos a university site where students can login, and enroll in courses. They have a simple profile that shows course enrollment.

![courses screenshot](app/assets/images/TechU-logoutDropdown-courseListing.png)

Casual browsers see the course listings, but must login to see other students.

![sign up screenshot](app/assets/images/techU_signup.png)


![student directory](app/assets/images/techU_student_dir.png)

My intent was to build the back-end using TDD, and Materialize as the front-end, prompted by the story in the third project in Mashrur Hossain's Complete Ruby on Rails developer course through Udemy. It was built in Ruby 2.6.3, Rails 5.2.4.4 with a SQLite3 db in development.

Prompted by this, I made Students and Courses models, with Enrollments (course_students) being a joint table. Using devise for the users makes sense so they can change passwords easily, and data is protected. However, since I had already made the Student and haven't implemented the other roles yet, I havne't added in devise yet.

Things Considered: Are the users only students or should we cover teachers and other roles? Will the course instructor be listed? TA? Max/min enrollment? Uniqueness of course name is not specified.

These questions aren't addressed in the model shown, so can be add ons later. I'll just build a MVP, without testing, as practice for what I've learned so far in Rails.

It was tested on Chrome and Safari browsers.

## Steps Followed

- Build a Student model: names, email
- Pages- about
- Build a Course model: course_no (CSXXX), name, description
- Add materialize as CSS
- Add flash messaging, need to style conditionally
- Add password, sessions
- Restrict routes, actions
- Add many-many associaton for students and courses
- Edit Profile (name, email)
- At this point, (commit: 088909ac3a1913) my project ~matches the tutorial, after this are my add-ons
- Add sign up page

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

- Add in devise for user management
- Add roles
<!-- - Add in testing -->
- Add contact, help
- Seed courses, users
- Add styling to messages
- Fix hamburger doesn't always expand
- Labels sometimes jump
- Add in links to About page
