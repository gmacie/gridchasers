source 'https://rubygems.org'

ruby '2.1.1'

gem 'rails', '4.1.1'

gem 'sqlite3'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development
gem 'bootstrap-sass'
gem 'high_voltage'

gem 'paperclip'
gem 'devise'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'capistrano', '~> 3.1.0'
  gem 'capistrano-bundler', '~> 1.1.2'
  gem 'capistrano-rails', '~> 1.1.1'
  #gem 'capistrano-rbenv', github: "capistrano/rbenv"
  gem 'capistrano-rvm', github: "capistrano/rvm"
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails', '>= 3.0.1'
end

group :test do
  gem 'capybara'
  # last check capybara was 2.2.1 on 6-6-2014

  gem 'database_cleaner'
  gem 'faker'
  gem 'launchy'
  gem 'selenium-webdriver'
end
