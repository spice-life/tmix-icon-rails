# tmix-icon-rails

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tmix-icon-rails'
```

And then execute:
```sh
$ bundle
```

Or install it yourself as:
```sh
$ gem install tmix-icon-rails
```

## Usage

```css
@import "tmix-icon"
```

### Customize font file host url
```shell
# require Node.js
$ script/generate.js https://example.com # => Output customized CSS to STDOUT
```

## Do you need list of icon and css class name?
See here -> https://spice-life.github.io/tmix-icon-rails/

Or...

```sh
$ ruby test/gen_table.rb > list_of_icons.html
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/spice-life/tmix-icon-rails.

## License

* [tmix-icon-rails](https://github.com/spice-life/tmix-icon-rails) font is
  licensed under the [SIL Open Font License](http://scripts.sil.org/OFL).
* [tmix-icon-rails](https://github.com/spice-life/tmix-icon-rails) CSS files are
  licensed under the [MIT License](http://opensource.org/licenses/mit-license.html).
