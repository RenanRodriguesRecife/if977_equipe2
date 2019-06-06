source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use sqlite3 as the database for Active Record
gem 'pg', '~> 0.21'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
gem 'rake', '~>12.3.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your bundler web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#GEM ESCRITA IMAGEM
gem 'carrierwave-postgresql'
#GEM LEITURA IMAGEM
gem 'postgresql_lo_streamer'


gem 'bulma-rails', '~> 0.6.1'
gem 'simple_form', '~> 3.5'

#BOOTSTRAP
gem 'bootstrap', '~> 4.3.1'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'listen', '~> 3.0.5'
  gem 'byebug', platform: :mri
  
  gem 'cucumber-rails', require: false
  gem 'rspec-rails'
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  
  gem 'better_errors', '~> 2.4'
  gem 'guard', '~> 2.14', '>= 2.14.1'
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2', require: false
end
gem 'web-console', group: :development
group :production do


  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'pg', '~> 0.21'
  
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'rails_12factor'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
#login
gem 'devise'
gem 'pry-coolline', '~> 0.2.5'
gem 'rspec-scaffold', '~> 2.0.0.beta1', require: false

group :test do
  gem 'cucumber-rails', require: false
  gem 'rspec-rails'
  gem 'guard-rspec', require: false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
end