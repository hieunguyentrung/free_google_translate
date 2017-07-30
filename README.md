### Status
[![Build Status](https://api.travis-ci.org/repositories/nhieu92/free_google_translate.svg)](https://travis-ci.org/nhieu92/free_google_translate)
![](http://ruby-gem-downloads-badge.herokuapp.com/free_google_translate?type=total)

## A free and unlimited API for Google Translate without authentication
Yes, you can using this gem without any authentication or API key.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'free_google_translate'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install free_google_translate

## Usage
```ruby
GoogleTranslate.translate from: "en", to: "vi", text: "hello"
```

Without `from` param, Google Translate will auto detects your source language.
```ruby
GoogleTranslate.translate to: "vi", text: "hello"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nhieu92/free_google_translate. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
