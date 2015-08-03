# Bracket Check Validator

A program that ensures all the opened  brackets are closed properly. This program detects three types of brackets: (), [],  {}. The output is GOOD or BAD base on the input.

Examples:

    (x + 2): GOOD
    (x + 1 : BAD
    ([x + 2)] : BAD
    ([x + 2][x+1]): GOOD

## Installation

Install rspec with Bundle:

    $ bundle install

## Testing
Code is tested using [RSpec](http://rspec.info/). Run the tests by running following command.

    $ rspec spec/


## Usage

Run the program from command line by running following command.

    $ ruby main.rb


Copyright (c) 2015 [Bashanta Dahal](https://github.com/bashantad)
