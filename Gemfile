source 'https://rubygems.org'
gem 'therubyracer'


gem 'bootstrap-generators', '~> 3.3.4'

gem 'bootstrap-sass', '~> 3.2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'

#ruby version
ruby '2.2.2'

gem 'spork-rails'

group :development do
  gem 'quiet_assets'
end	

# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
end

#Heroku for Rails require rails_12factor
group :production do
  gem 'rails_12factor'
  gem 'pg'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
end

group :development do
  gem 'guard'
end

group :development do
  gem 'guard-spork'
end

gem 'stripe' , :git => 'https://github.com/stripe/stripe-ruby'

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'


# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

gem 'devise'

gem 'cancancan'

gem 'will_paginate'

gem 'will_paginate-bootstrap'

gem "factory_girl_rails", "~> 4.0"


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
