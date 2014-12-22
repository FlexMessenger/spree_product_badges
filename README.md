Spree Product Badges
==================

Product badges gem for Spree

Installation
------------

Add spree_product_badges to your Gemfile:

```ruby
gem 'spree_product_badges'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_product_badges:install
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_product_badges/factories'
```

Copyright (c) 2014 [Flex Messenger], released under the New BSD License
