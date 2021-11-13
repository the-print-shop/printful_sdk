# PrintfulSdk

Integrate your online store with [printful](https://www.printful.com/dashboard/default) service.

## Setup

Add this line to your application's Gemfile:

```ruby
gem 'printful_sdk'
```

Config the SDK with secret key

```ruby
PrintfulSdk.configure do |config|
  config.api_key = ENV['PRINTFUL_API_KEY']
end
```

## Usage

Fetch available products

```ruby
PrintfulSdk::Api::Catalog.products
```

Fetch store info

```ruby
PrintfulSdk::Api::Store.info
```

For more example, please refer to the tests under test folder.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
