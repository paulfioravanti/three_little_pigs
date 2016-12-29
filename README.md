# The Story of the Three Little Pigs :pig: :pig: :pig:

[![Build Status](https://travis-ci.org/paulfioravanti/three_little_pigs.svg?branch=master)](https://travis-ci.org/paulfioravanti/three_little_pigs)
[![Code Climate](https://codeclimate.com/github/paulfioravanti/three_little_pigs/badges/gpa.svg)](https://codeclimate.com/github/paulfioravanti/three_little_pigs)
[![Test Coverage](https://codeclimate.com/github/paulfioravanti/three_little_pigs/badges/coverage.svg)](https://codeclimate.com/github/paulfioravanti/three_little_pigs/coverage)

This is the story of The Three Little Pigs, in Ruby.
It is adapted from the
[the original story](http://www.authorama.com/english-fairy-tales-16.html),
shortened down, and Disney-fied a little bit.

The app, or more accurately its tests, were designed to be presented to an
audience.  So, the app itself doesn't have much outward-facing functionality,
and the details of the implementation do not matter: it's all about the flow
of the story during the presentation, and showing how the story's state changes
as it progresses.

## Installation :pig_nose:

First, install Ruby 2.4.0 on your local machine, then:

    $ git clone https://github.com/paulfioravanti/three_little_pigs.git
    $ cd three_little_pigs
    $ bundle install

## Usage :pig2:

Run the app, simply printing the story to screen:

    $ bin/three_little_pigs

Run the app in debug mode, which will give you a `pry` prompt at the end
of every "chapter" so you can inspect the state of the "story":

    $ DEBUG=true bin/three_little_pigs

## Testing :wolf:

Tests for this story are written in both RSpec specs and Minitest tests.

Choose to run the tests, the specs, or both:

    $ rake test
    $ rake spec
    $ rake # runs both

View test coverage report:

    $ open coverage/index.html

## Presentation :heart:

This project was presented at
[Rails Camp 20](https://ti.to/ruby-australia/rails-camp-queensland-2016/en)
on 10 Dec 2016, and at the
[Ruby on Rails Oceania Sydney meetup](https://www.meetup.com/Ruby-On-Rails-Oceania-Sydney/events/234773812/)
on 13 Dec 2016.

A video of the presentation at RORO can be found
[here](https://vimeo.com/196540052).

The presentation deck can be found [here](https://speakerdeck.com/paulfioravanti/the-story-of-the-three-little-pigs),
and if you're interested in getting a hold of the Keynote file, [tweet at me](https://twitter.com/paulfioravanti).

## License :house:

This story is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).

## Social :sparkles:

<a href="http://stackoverflow.com/users/567863/paul-fioravanti">
  <img src="http://stackoverflow.com/users/flair/567863.png" width="208" height="58" alt="profile for Paul Fioravanti at Stack Overflow, Q&amp;A for professional and enthusiast programmers" title="profile for Paul Fioravanti at Stack Overflow, Q&amp;A for professional and enthusiast programmers">
</a>
