# Popshops

A lightweight Ruby wrapper for communicating with the latest PopShops API (v3).

## Installation

Add this line to your application's Gemfile:

    gem 'popshops-api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install popshops-api

## Usage

`require 'popshops'` as needed

Initialize the Popshops API

``` ruby
popshops = Popshops::Api.new('api_key_value', 'catalog_key_value' )
```

Options:
* api_key: Required
* catalog_key: Optional, but needed in many calls.
* private_api_key: Optional, if your account supports it.
* format: Optional. Can be :json or :xml. Defaults to :json

You can always switch popshops catalogs by reinitializing popshops, or utilizing the following method:

``` ruby
popshops.use_catalog('new_catalog_key')
```
You're now ready to start receiving data from Popshops.
All of the PopShops API methods are available as:

* find_products
* find_coupons_and_deals
* find_merchants
* list_categories
* list_merchant_types
* list_deal_types
* list_networks
* list_countries
* list_keywords

### [Find Products](http://popshops.com/support/api-3-products)

Product calls are used to get all information related to products, and the specific merchant offers for those products. One thing to note is that only offers will have affiliate links associated with them, the product itself will not have an affiliate URL.

To lookup all products in your catalog, call:
``` ruby
popshops.find_products
```

To search for products by keyword, call:
```
popshops.find_products(keyword: 'ipad')
```

More details to come for other sections.

## Contributing

1. Fork it ( http://github.com/beneggett/popshops-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/beneggett/popshops-api/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

