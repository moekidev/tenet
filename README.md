# Tenet

Tenet restores HTML elements views to Array of Hash data.
It provides a API for mapping to HTML scraping rules and data attributes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tenet'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install tenet

## Usage

Import from a index page:

```ruby
require "tenet"

class Events < Tenet::IndexPage
  url "https://example.com/events"

  row ".event"

  attribute :name, css: ".event__title", type: :string
  attribute :link, css: ".event__link", type: :link
  attribute :thumbnail, css: ".event__thumbnail", type: :img
  attribute :status, css: ".event__status", type: :string
end

Events.new.to_a
```

Import from multiple show pages:

```ruby

require "tenet"

class Events < Tenet::MultiPage
  urls [
    "https://example.com/events/1",
    "https://example.com/events/2",
    "https://example.com/events/3"
  ]

  attribute :name, css: ".event__title", type: :string
  attribute :link, css: ".event__link", type: :link
  attribute :thumbnail, css: ".event__thumbnail", type: :img
  attribute :status, css: ".event__status", type: :string
end

Events.new.to_a
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).
