# Smart Pension Tech Test #

A Ruby Application parsing a given log file directory and returns a given result using Object Oriented Programming (OOP) and Test Driven Development (TDD).

## Instructions for Tech Test ##

1. ruby_app

Write a ruby script that:

a. Receives a log as argument (webserver.log is provided)
  e.g.: ./parser.rb webserver.log

b. Returns the following:

  > list of webpages with most page views ordered from most pages views to less page views
     e.g.:
         /home 90 visits
         /index 80 visits
         etc...
 
 > list of webpages with most unique page views also ordered
     e.g.:
         /about/2   8 unique views
         /index     5 unique views
         etc...

## Technologies used ##

* Ruby
* RSpec
* Rubocop
* Pry

## Running the app ##

* Clone this repository: git clone git@github.com:johndewinton/smart_pension_tech_test

* Go into the repository: cd smart_pension_tech_test

* Run bundle install

* In the command line, run pry or irb.

## Running the tests ##

Run RSpec in your terminal


