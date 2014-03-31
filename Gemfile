source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# haml templates
gem 'haml'

# Use SCSS for stylesheets
gem 'sass-rails'
gem 'sprockets', '2.11.0' #http://stackoverflow.com/questions/22392862/undefined-method-environment-for-nilnilclass-when-importing-bootstrap
group :assets do
     gem 'susy' ,'~> 2.1.1'
     gem 'bourbon'
   
end
# Grid framework is susy


# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# mongo db drivers
gem 'mongoid', '~> 4.0.0.beta1', github: 'mongoid/mongoid'
gem 'bson_ext'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development do
  gem 'capistrano-rails', '~> 1.0.0'
  gem 'capistrano-bundler'
  gem 'capistrano-rbenv'
  gem 'erb2haml'
end

# Use debugger
# gem 'debugger', group: [:development, :test]
