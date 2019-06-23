# The Story of the Three Little Pigs :pig: :pig: :pig:

[![Build Status][travis-badge]][travis-url]
[![Code Climate][code-climate-badge]][code-climate-url]
[![Test Coverage][code-climate-coverage-badge]][code-climate-coverage-url]

This is the story of The Three Little Pigs, in [Ruby][].
It is adapted from the [the original story][three-little-pigs-story],
shortened down, and Disney-fied a little bit.

The app, or more accurately its tests, were designed to be presented to an
audience.  So, the app itself doesn't have much outward-facing functionality,
and the details of the implementation do not matter: it's all about the flow
of the story during the presentation, and showing how the story's state changes
as it progresses.

## Installation :pig_nose:

First, install Ruby 2.6.3 on your local machine, then:

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

Tests for this story are written in both [RSpec][] specs and [Minitest][] tests.

Choose to run the tests, the specs, or both:

    $ rake test
    $ rake spec
    $ rake # runs both

View test coverage report:

    $ open coverage/index.html

## Presentation :performing_arts:

This project was presented at:

- [Rails Camp 20][rails-camp-20] on 10 Dec 2016
- [Ruby on Rails Oceania Sydney meetup][roro] (RORO) on 13 Dec 2016.

A video of the presentation at RORO can be found at:

- [Vimeo][vimeo-url]
- [YouTube][youtube-url]

The presentation deck can be found [here][speakerdeck-url], and if you're
interested in getting a hold of the [Keynote][] file,
[tweet at me][twitter-url].

## License :house:

This story is available as open source under the terms of the [MIT License][].

## Social :sparkles:

[![Contact][twitter-badge]][twitter-url]<br />
[![Stack Overflow][stackoverflow-badge]][stackoverflow-url]

[code-climate-badge]: https://codeclimate.com/github/paulfioravanti/three_little_pigs/badges/gpa.svg
[code-climate-coverage-badge]: https://codeclimate.com/github/paulfioravanti/three_little_pigs/badges/coverage.svg
[code-climate-coverage-url]: https://codeclimate.com/github/paulfioravanti/three_little_pigs
[code-climate-url]: https://codeclimate.com/github/paulfioravanti/three_little_pigs
[Guard]: https://github.com/guard/guard/
[Keynote]: https://www.apple.com/keynote/
[Minitest]: https://github.com/seattlerb/minitest
[MIT License]: LICENSE.txt
[rails-camp-20]: https://ti.to/ruby-australia/rails-camp-queensland-2016/en
[roro]: https://www.meetup.com/Ruby-On-Rails-Oceania-Sydney/events/234773812/
[RSpec]: http://rspec.info/
[Ruby]: https://github.com/ruby/ruby
[Simplecov]: https://github.com/colszowka/simplecov
[speakerdeck-url]: https://speakerdeck.com/paulfioravanti/the-story-of-the-three-little-pigs
[stackoverflow-badge]: http://stackoverflow.com/users/flair/567863.png
[stackoverflow-url]: http://stackoverflow.com/users/567863/paul-fioravanti
[survey-tool-elixir]: https://github.com/paulfioravanti/survey_tool_elixir
[three-little-pigs-story]: http://www.authorama.com/english-fairy-tales-16.html
[travis-badge]: https://travis-ci.org/paulfioravanti/three_little_pigs.svg?branch=master
[travis-url]: https://travis-ci.org/paulfioravanti/three_little_pigs
[twitter-badge]: https://img.shields.io/badge/contact-%40paulfioravanti-blue.svg
[twitter-url]: https://twitter.com/paulfioravanti
[vimeo-url]: https://vimeo.com/196540052
[youtube-url]: https://www.youtube.com/watch?v=hxhibetoPLw
