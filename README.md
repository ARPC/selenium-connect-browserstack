# Selenium::Connect::Browserstack

Allows you to configure selenium-connect to run on Browserstack.com

## Installation

Add this line to your application's Gemfile:

    gem 'selenium-connect-browserstack'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install selenium-connect-browserstack

## Usage

Add details to your config:

```ruby
---
  browserstack:
    os: 'Windows'
    os_version: '7'
    browser: 'IE'
    browser_version: '10.0'
    resolution: '1280x1024'
    debug: true
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/selenium-connect-browserstack/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
