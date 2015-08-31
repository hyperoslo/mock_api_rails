# Mock Api Rails

Is a way to quickly mock APIs serving static JSON files

## Installation

Add this line to your application's Gemfile:

    gem 'mock_api_rails'

... and then execute:

    $ bundle


Then in your routes:

```ruby
# config/routes.rb
Rails.application.routes.draw do
  [...]

  mock_api :get, '/posts'
end
```

That's it, you're done!

## Usage

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

[Hyper](http://www.hyper.no) made this. We're a digital communications agency
with a passion for good code, and if you're using Mock Api Rails we probably
want to hire you.

## License

Mock API Rails is available under the MIT license. See the LICENSE file for
more info.
