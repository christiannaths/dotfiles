create_file "Procfile", <<-CODE
web: bundle exec thin start -p $PORT
CODE

remove_file "Gemfile"
create_file 'Gemfile', <<-CODE
source 'https://rubygems.org'

# Framework Stack
gem 'rails', '4.1.0.beta1'
gem 'spring', group: :development
# gem 'rmagick'

# Auth
gem 'bcrypt-ruby', :require => 'bcrypt'
# gem 'devise', '3.0.0.rc'
# gem 'cancan'

# Database & Server
gem 'pg'
gem 'thin'

# Assets
gem 'sass-rails', '~> 4.0.0.rc1'
# gem 'bootstrap-sass'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'

# Templating
gem 'haml-rails'
gem 'html2haml'

# View Helpers
gem 'flash_messages_helper'

# Testing
gem 'rspec-rails', '~> 3.0.0.beta', group: [:test, :development]
gem 'guard-rspec', group: [:test, :development], require: false
gem 'factory_girl_rails', group: :test
gem 'shoulda-matchers', group: :test

# Debugging
gem 'disable_assets_logger', group: :development
gem 'awesome_print', group: :development
# gem 'debugger', group: [:development, :test]
# gem 'airbrake'
CODE

run "bundle install"

remove_file "config/database.yml"
create_file "config/database.yml", <<-CODE
default: &default
  adapter: postgresql
  encoding: unicode
  host: localhost
  pool: 5
  username: christiannaths
  password:

development:
  <<: *default
  database: #{ @app_name }_development

test:
  <<: *default
  database: #{ @app_name }_test
CODE

remove_file "config/routes.rb"
create_file "config/routes.rb", <<-CODE
Rails.application.routes.draw do
  # root 'welcome#index'
end
CODE

create_file "lib/tasks/remigrate.rake", <<-CODE
# Drops, re-creates and seeds the development database
# Usage: rake db:reseed
namespace :db do
  desc "Raise an error unless development environment"
  task :dev_only do
    raise "You can only use this in dev!" unless Rails.env == 'development'
  end
  desc "Drop, create, migrate then seed the development database"
  task remigrate: ['environment', 'db:dev_only', 'db:drop', 'db:create', 'db:migrate']
end
CODE

create_file "lib/tasks/reseed.rake", <<-CODE
# Drops, re-creates and re-migrates the database
# Usage: rake db:remigrate
namespace :db do
  desc "Raise an error unless development environment"
  task :dev_only do
    raise "You can only use this in dev!" unless Rails.env == 'development'
  end
  desc "Drop, create, migrate then seed the development database"
  task remigrate: ['environment', 'db:dev_only', 'db:drop', 'db:create', 'db:migrate']
end
CODE

generate "rspec:install"
run "guard init rspec"

remove_file "app/views/layouts/application.html.erb"
create_file "app/views/layouts/application.html.haml", <<-CODE
!!!
%html
  %head
    %meta(charset="utf-8")
    %meta(http-equiv="X-UA-Compatible" content="IE=edge,chrome=1")
    %meta(name="description" content="")
    %meta(name="viewport" content="width=device-width,initial-scale=1")
    = csrf_meta_tags
    %title #{ @app_name.titleize }
    = stylesheet_link_tag "application", media: "all", "data-turbolinks-track" => true
  %body
    %header
    %main
      = flash_messages
      = yield
    %footer
    = javascript_include_tag "application", "data-turbolinks-track" => true
CODE

create_file "app/assets/stylesheets/application.sass"
remove_file "app/assets/stylesheets/application.css"

remove_file "README.rdoc"
create_file "README.md", "TODO"

git :init
append_file ".gitignore", "config/database.yml"
append_file ".gitignore", ".DS_Store"
git add: ".", commit: "-m 'initial commit'"
