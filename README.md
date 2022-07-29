# Job-board
Job-board is a platform to offer or find jobs, connecting private people in need, and skilled people. It makes it easier for customers to find someone for a small job and affordable prices, while skilled people can find an extra income. 
https://dominiks-jobboard.herokuapp.com/

I created this web application for my second individual project for General Assembly Software Engineering Immersive Course. We were tasked to create a CRUD system using everything we had learnt in the last 5 weeks about front and back end web development. We were given a week to create a functioning application complete with Models (at least 3), Views, Controllers, Gems and site deployment (Heroku).

## For Job advertisers:
- Place a job on our platform
- Choose one of the applicants 
- Save some money


## For job seekers:
- Search for a job in your area
- Send you personal application
- Make more money in your own time

## Logins

### Admin:
<pre>
Email: dominik@ga.co 
Password: chicken
</pre>

Normal users:
<pre>
Email: craigsy@ga.co
Password: chicken

Email: dom@ga.co
Password: chicken
</pre>

## Features

1. Sign in/Sign out

2. Create users profile

3. Search Bar on Job Index page

    * Search by city with in a 50km radius
    * Search results are clickable links to the Job page

    <br/>

4. Post & Edit & Delete Jobs
    * Any user can post a Job
    * Only the owner of a Job can edit and delete the add

     <br/>

5. Job Index Page
    * All available Jobs
    * Location 
    * Task
    * Description 

6. Job show Page
    * Displays all job adds
    * Clickable link to the Job for more deatils and application form
    * Job information include:
        * Posted by (The owner)
        * Job Images
        * Location
        * Task
        * Duration
        * A short description

7. Applicants Index
    * Shows you all applicants
    * Applicants Name, Surname, Email and description

    <br/>

## Tools, Gems and APIs used

Ruby on rails was the main tool used to create this web application.
* Ruby on Rails 5.2.7
* SCSS & CSS 
* HTML & ERB
* Heroku
* Cloudinary

Gems:
* Geocoder

APIs:
* Google Maps API

<br/>

## To Do List

* Instant Messaging
* Add payment method (none at the moment)
* User ratings
* Notifications for users when trips Jobs been edited or deleted. 
* Notifications for Job advertiser when someone has applied
* Allow users to delete themselves
* Optimization for mobiles and other devices

## Screenshots
### Homepage
![](/app/assets/images/screen1.png)

### Job Index
![](/app/assets/images/jobindex.png)

### Job Show
![](/app/assets/images/jobshow.png)

### Create a Job add
![](/app/assets/images/createjob.png)

### Job Applicants 
![](/app/assets/images/applicants.png)

### Sign Up
![](/app/assets/images/signUp.png)

### Login
![](/app/assets/images/LogIn.png)

### All users (only for admins)
![](/app/assets/images/users.png)