# Food Emissions Log - AP Environmental Science app
Students collaborate to collect and organize greenhouse gas emissions data for foods.

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Features](#features)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)

## General info
This application was made for the Rails Project for Flatiron Full Stack Web Development V7 Curriculum. This purpose of this project is to demonstrate the ability to build a Ruby on Rails application that includes forms to collect data and routes to display the data.  This specific application is for an AP Environmental Science course to help students research and share data about greenhouse gas emissions from foods.  A student in the class can create an account on the application or use their  school google account to login. Once logged in they can contribute to the list of emissions data that other students have compiled. Students can reference this class log of emissions data for their own research and add missing information by researching and then filling out a form to enter the data they find.

## Technologies
* Ruby - version 2.6.1
* Rails - version 5.2.3
* Bootstrap - version 4.3.1

## Setup
Run on localhost:3000


## Features
* Forms for new student account, and new emissions. Nested form to create new food on the new emissions form.
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

## Status
Project is: functional, but data is not accurate.

## Inspiration
Project inspired by my students and their desire to learn and reduce their greenhouse gas emissions.

## Contact
Created by mcburns2222@gmail.com - feel free to contact me!
