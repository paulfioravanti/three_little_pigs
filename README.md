# The Story of the Three Little Pigs :pig: :pig: :pig:

The version of the story presented here is an adaptation of
[the original story](http://www.authorama.com/english-fairy-tales-16.html),
shortened down, and changed to fit the flow of a computer program.

## Installation :pig_nose:

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

## License :house:

This story is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).

## Social :sparkles:

<a href="http://stackoverflow.com/users/567863/paul-fioravanti">
  <img src="http://stackoverflow.com/users/flair/567863.png" width="208" height="58" alt="profile for Paul Fioravanti at Stack Overflow, Q&amp;A for professional and enthusiast programmers" title="profile for Paul Fioravanti at Stack Overflow, Q&amp;A for professional and enthusiast programmers">
</a>
