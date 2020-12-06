# CATYOU
Welcome to CATYOU! The world's premiere application for presentation review with *no* copyright issues at all! Using this application, you'll be able to sign in as either an instructor or student, and assign/review presentations for groups of students in your class, and much more! Follow along this README for a full explanation of how to install and use this wonderful and useful application!

## Getting Started

To get started with the app, clone the repo and then run the following commands:

First, install the required gems by running:

```
$ bundle install
```
If you do not have bundler already installed, run the command below and repeat the above:

```
$ gem install bundler
```

Then, make sure yarn is up to date by running:

```
$ yarn-install --check-files
```

Next, migrate the database:

```
$ rails db:migrate
```

Next we want to seed our data base with some sample data:

```
$ rails db:reset
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

Keep in mind the application already comes with several user accounts to enchance the 
visual aspect of the functionality.


### Sign Up
The first thing you'll want to do for this app is sign up! You will need your name, email address, and a password to create an account. Next, you'll need to select whether you are a student or an instructor. Clicking the "Sign Up" button will create a user account and direct you to the Log In page.

### Log In
After you create an account, the next thing you want to do is log into that account. This simply takes your email and your password. Logging in will bring you to either the student or instructor dashboard, depending on the account type you created on the Sign Up page. You can also select one of the default accounts seeded from our seed file.

From now on, this guide will cover two different user types: the student and the instructor. Please reference the specific section for your user type.

### Student Use

To get the full experience we recommend using one of the default student accounts.These accounts already come prepopulated with data to enchance user experience. The following student included are below: 

name: 'Simon Kirksey', email: 'kirksey@osu.edu', password: 'asdfgh', 
name: 'Antoni Rempala',  email: 'rempala@osu.edu', password: 'asdfgh', 
name: 'Kunal Arya', email: 'arya@osu.edu', password: 'asdfgh',
name: 'Sam Cohen',  email: 'cohen@osu.edu', password: 'asdfgh',
name: 'Zaid Badiger', email: 'badiger@osu.edu', password: 'asdfgh',
name: 'John Smith', email: 'smith@osu.edu', password: 'asdfgh'

You can consult the seed file in 'db/seeds.rb' for more details.

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
Now, let's describe how an instructor might use this application. Off account creation and login, the instructor will be greeted with a mostly empty screen, with a welcome message and an option to add a course. We recommend starting off with the default Instructor account; name: 'Paul Sivilotti', email: 'sivilotti@osu.edu', password: 'asdfgh' to get the full user experience.

#### Adding Courses
The first thing an instructor will want to do is add a course. This can be done by clicking the "Add Course" button. This will take the instructor to a separate page in which they can type in a course name and click a submit button, which brings them back to their homepage with their newly created course! However, this course will not be very useful until they add sections.

#### Adding Sections
The next thing for an instructor to do is add sections to their course. To do this, they must click the course title on their screen to produce a dropdown menu, empty at first except for an "Add Section" button. Clicking the 'Add Section' button will bring the instructor to a new page, almost exactly like the add course page except this one is adding a section number. Now, on their dashboard, the instructor is able to click on the recently added section to see a list of assigned presentations, which is of course empty at the beginning.

#### Adding Students
The instructor is easily able to add and view students in a section by clicking the "Roster" button for a specific section. This will take them to a section roster page in which they will be able to see the name and email of each student enrolled in the course, and a way to add a new student. To add a student click the "Add Student" button to go to a new page (similar to "Add Course" and "Add Section") to add a student to that specific Section using that student's email. If that student has not created an account, then they will not be able to be added to the section. Now, on the roster page, the instructor is able to remove that student with a click of a button. On top of the student accounts you might have created yourself, you can play around using the following default student emails:

'kirksey@osu.edu'
'rempala@osu.edu'
'arya@osu.edu'
'cohen@osu.edu'
'badiger@osu.edu'
'smith@osu.edu'

*Note Only students in the same section can be added to the same presentation

#### Creating Presentations
Now that a course has sections and students, an instructor can create and assign a presentation to those students. By clicking the "Add Presentation" button on the dashboard, an instructor can create a new presentation to assign to the class. By default, a presentation has zero presenters, and a review is assigned every student in the section. To assign a student or a group of students to a presentation, click the "Presenters" button next to the presentation name. To add a student as a presenter, simply type their email and click the submit button. This will assign that student as a presenter, and prevent them from reviewing that presentation.

#### Grading Presentations
An instructor is now able to view all the students assigned to a presentation, as well as all of the reviews left for that presentation. A review (as seen by the instructor) consists of a numeric score (1-10), a comment, and the student who left that review. Additionally, to help the grading process, the instructor will see the average score given to that presentation.

#### Deleting Presentations
To delete a presentation, the instructor can click the "Delete" button next to the desired presentation title. This will remove the presentation from the instructor dashboard, as well as the student dashboards.

#### Deleting Sections and Courses
To delete a section or a course, the instructor can click the "Delete" button next to the desired title. This will remove the section/course from the instructor dashboard, as well as the relevant student dashboards.

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

