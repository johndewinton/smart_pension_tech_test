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

* Clone this repository: git clone git@github.com:johndewinton/smart_pension_tech_test.git

* Go into the repository: cd smart_pension_tech_test

* Run bundle install

* In the command line, run pry or irb.

## Running the tests ##

Run RSpec in your terminal

Parse

  #create
  
    1) when no path is supplied
    
      * should not run
      
    2) when a path is supplied
    
      * should run

TotalViews

  3) when sorting logfile based on total views
  
    * returns an array of file paths
    
    * returns the total views per file path
    
    * returns the sorted result in array form
    
    * returns the sorted result in a string

UniqueViews

  4) when sorting logfile based on order of unique views
  
    * identifies the unique views and deletes the duplicates in the parsed array
    
    * returns the total unique views per file path
    
    * returns the sorted array based on number of unique views
    
    * returns the sorted result based on unique views

Finished in 0.80916 seconds (files took 0.44002 seconds to load)
10 examples, 0 failures


## Approach ##

* I used TDD whilst solving this challenge which was my first time.

* I focused all my methods on one class called Parse where it begins with parsing the logfile into an array of arrays.

* I used Pry to consistently test all my methods individually in order for my application to function and Rubocop to test     against good practice in Ruby.

## Contribution ##

* Pull Requests are welcome.

