# minitest-assert-json-equal

[![Build Status](https://travis-ci.org/icco/minitest-assert-json-equal.svg?branch=master)](https://travis-ci.org/icco/minitest-assert-json-equal)

This adds two methods to your minitest: `assert_json_equal` and `refute_json_equal`. They don't care about the json string. They just make sure two things are true:

 - the json parses.
 - the objects parsed from the json are the same.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'minitest-assert-json-equal'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-assert-json-equal

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/icco/minitest-assert-json-equal. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
