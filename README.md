[![Gem Version](https://badge.fury.io/rb/solidus_import_products.svg)](https://badge.fury.io/rb/solidus_import_products)
[![Build Status](https://travis-ci.org/ngelx/solidus_import_products.svg?branch=master)](https://travis-ci.org/ngelx/solidus_import_products) 
[![Maintainability](https://api.codeclimate.com/v1/badges/132ebaa254502b25d886/maintainability)](https://codeclimate.com/github/ngelx/solidus_import_products/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/132ebaa254502b25d886/test_coverage)](https://codeclimate.com/github/ngelx/solidus_import_products/test_coverage)
[![Dependency Status](https://beta.gemnasium.com/badges/github.com/ngelx/solidus_import_products.svg)](https://beta.gemnasium.com/projects/github.com/ngelx/solidus_import_products)

This extension adds product import functionality to Solidus, with a bunch of features that give it similar functionality to Shopify's importer.

This extension adds a tab to the administration area of Solidus, allowing a logged-in user to select and upload a file in any of the [supported formats](https://github.com/ngelx/solidus_import_products#Formats-supported) containing product information. The upload is then placed on queue for processing. Once it has been processed, the user who initiated the job is notified by email that their import has completed.


Features
==============

Products
-------------
* Create if they do not exists, otherwise update them.
* Set Properties.
* Attach/import multiple local or remote images.
* Create/Associate to many taxonomies.

Variations
------------
* Create if they do not exists, otherwise update them.
* Create Options types as needed.
* Create Options values as needed.

Formats supported
-----------
* CSV. [examples](spec/fixtures/)

ActiveJob
----------
This gem relies on ActiveJob for scheduling imports greater than 20 products/variantions. For more information about activeJob see [ActiveJob Rails Guide](http://guides.rubyonrails.org/active_job_basics.html)


Installation
==============
1. Add the gem to your Gemfile, and run bundle install.
    `gem 'solidus_import_products', :git => 'git://github.com/ngelx/solidus_import_products.git'` then `bundle install`

2. rails generate solidus_import_products:install

3. Configure the extension to suit your application by changing config variables in `config/initializers/solidus_import_product_settings.rb`

4. Run application!

Sample files and documentation
==============

Some basic samples files could be find in [spec/fixtures](spec/fixtures/)

For documentation refer to the [wiki](https://github.com/ngelx/solidus_import_products/wiki)

Contributing
=======

* Fork the project
* Make your changes, including tests that exercise the code. The first steps to setup the env is something like:

```ruby
rake test_app
rake spec
```

* Summarize your changes in CHANGELOG.md
* Make a pull request

History and attribution
==============
The product import script was based on a simple import script written by Brian Quinn [here](https://gist.github.com/31710). Then it was extended by Josh McArthur (2010). After that by [2beDigital team](https://github.com/2beDigital/solidus_import_products). 
Finaly after all that, I've made some big estructural changes and here we are.
