# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# CATYOU
Welcome to CATYOU! The world's premiere application for presentation review with *no* copyright issues at all! Using this application, you'll be able to sign in as either an instructor or student, and assign/review presentations for groups of students in your class, and much more! Follow along this README for a full explanation of how to install and use this wonderful and useful application!

## Getting Started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

## How to Use This Application

Now that you're all installed and ready to go, it's time to use this app! 

### Sign Up
The first thing you'll want to do for this app is sign up! You will need your email address, and a password to create an account. Next, you'll need to select whether you are a student or an instructor. Clicking the "Sign Up" button will create a user account and direct you to the Log In page.

### Log In
After you create an account, the next thing you want to do is log into that account. This simply takes your email and your password. Logging in will bring you to either the student or instructor dashboard, depending on the account type you created on the Sign Up page.

From now on, this guide will cover two different user types: the student and the instructor. Please reference the specific section for your user type.

### Student Use
First off, let's describe how a Student will use this application. Off login, a student will be directed to his/her dashboard, which contains a list of all the courses they are enrolled in. Clicking on the course name will create a dropdown area in which the student will see two types of presentations: presentations by other students and presentations by them.

#### Presentation List
Presentations created by other students will show up in a table populated by the presentation name and a link to a page to leave the review. Presentations given by the logged in student will show up in a table populated by the presentation name and a link to a page to check their feedback.

#### Leaving a Review
Once clicking the "Review" button in the table of other students' reviews, the student will be directed to a page to leave the review. This page will have the name of the presentation they are reviewing, a scale from 1-10, a text area to leave comments on the presentation, and a submit button. Clicking this submit button will redirect the student back to their dashboard, and submit the review to a database where the instructor and the presentation group will be able to see the review. Only the instructor will be able to see who left the review. On the student dashboard, the link to leave the review will be grayed out, with the student unable to leave a second one.

#### Checking Feedback
Clicking the "Feedback" button in the table of the logged in student will take that student to a page where they can view all of the reviews left anonymously by the other students, in addition to an average review score.

#### Site Navigation
The student is able to navigate throughout the site using the buttons on the top of the page. There will typically be 3 buttons available: the logo on the left, the log out button, and the dashboard button. Clicking on the logo will bring the user back to the log in page, but will not log them out. The log out button will log the student out, bringing them back to the log in page and making them unable to access their student dashboard. Finally, the dashboard button will simply bring the student back to their dashboard.

### Instructor Use


## Style Guidelines
- We used the prestigious w3c validator (default settings) to ensure that the HTML for the website is up to the appropriate standards. You can find this validator here: https://validator.w3.org/

- Similarly, we used the w3c's equally prestigous CSS validator (default settings) to ensure that the CSS on your future website is up the highest of standards! Aren't you glad that we're making this site? It can be found here: https://jigsaw.w3.org/css-validator/

- To validate the Ruby code, our team used the beloved RuboCop version ____.

## Testing

## Development

The development of this project brought together some of the top minds in the OSU CSE 3901 Web Apps class, each bringing a unique set of skills and giving their all to make this the best project it could possibly be. Here are their names and contributions:

- Antoni Rempala:
  - 
- Kunal Arya:
  - 
- Sam Cohen:
  - 
- Simon Kirksey:
  - 
- Zaid Badiger:
  -

