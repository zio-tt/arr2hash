Arr2hash

This README and the corresponding gem were created with the help of ChatGPT by OpenAI.

## Overview

`arr2hash` is a Ruby gem that provides a simple way to convert a two-dimensional array into an array of hashes. The first sub-array is treated as the keys, and the subsequent sub-arrays are treated as the values.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'arr2hash'
```

And then execute;

```ruby
bundle install
```

Or install it yourself as:

```ruby
gem install arr2hash
```

## Usage
Using `arr2hash` is straightforward. Simply call the `a_to_hash` method on a two-dimensional array as shown below:

```ruby
require "arr2hash"

array = [
  ["title", "content", "user_name"],
  ["A", "a", "あ"],
  ["B", "b", "い"]
]

      result = Arr2hash.a_to_hash(array)
```

The result will be:

```ruby
[
  {title: "A", content: "a", user_name: "あ"},
    {title: "B", content: "b", user_name: "い"}
]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/zio-tt/arr2hash](https://github.com/zio-tt/arr2hash).
