# Food Emissions Log - AP Environmental Science App
Students collaborate to collect and organize greenhouse gas emissions data for foods.

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Features](#features)
* [Installation](#installation)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)
* [License](#license)
* [Contributing](#contributing-guidelines)

## General info
This application was made for the Rails - JS Project for Flatiron Full Stack Web Development V7 Curriculum. It is built on top of the Rails app created for a previous project. The result is a Rails backend with JS manipulating the frontend for most views of foods and emissions and to submit a form to create a new emission. This specific application is for an AP Environmental Science course to help students research and share data about greenhouse gas emissions from foods.  A student in the class can create an account on the application or use their school google account to login. This feature is implemented with OmniAuth Once logged in they can contribute to the list of emissions data that other students have compiled. Students can reference this class log of emissions data for their own research and add missing information by researching and then filling out a form to enter the data they find.

## Technologies
* Ruby - version 2.6.1
* Rails - version 5.2.3
* Bootstrap - version 4.3.1
* jquery

## Installation
Fork and Clone
Run bundle install
Migrate db
Run on localhost:3000
Signup or login and begin entering data. Alternatively you can seed the database with the provided seed data but it is ridiculously fake.



## Features
* Forms for new student account, and new emissions. Nested form to create new food on the new emissions form.
* The food index and emission show pages now load by changing the DOM with javascript instead of a total page refresh.
* The form for the new emission submits with a jquery AJAX function ($.post)
* Nested routes to view more specific information on emissions index page. For example, only list the emissions entered by a single student.
* OmniAuth for login using google or github.
* Scope methods to sort information based on the amount of greenhouse gas emissions or by category of food.

To-do list:
* Improve sort options to account for multiple amounts for each emission. For example, average or use the lowest or highest.
* Add links to the website sources that students submit with the emission data.  Must be validated to make sure the links work.
* Add drop down menu of the sources that students have entered to the new emission forms
* Improve styling to increase readability and engagement.
* Refactor scope methods to accept params instead of hard coding.
* Replace seed data with real data.
* Display emissions data on food index with javascript.  The original app used a grid to display the emissions data for each food, but more code needs to be added to display the same information using javascript.

## Status
Project is: functional, but data is not accurate.

## Inspiration
Project inspired by my students and their desire to learn and reduce their greenhouse gas emissions.

## Contact
Created by mcburns2222@gmail.com - feel free to contact me!

## License
This project is licensed under the terms of the MIT license.

## Contributing Guidelines
Thank you for taking the time to provide input.
* Please suggest changes through pull requests on Github.
* Please use consistent coding style that matches the codebase.
* All contributions will be under the MIT license.
* Report bugs using Github issues.

