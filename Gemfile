source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

# ================== Main App Gems ==================
gem 'rails', '~> 5.2.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'dotenv-rails'
gem 'tzinfo-data'
gem 'bootsnap', '>= 1.1.0', require: false
# group :development do
# #   gem "capistrano", "~> 3.7"
# #   gem "capistrano-rails", "~> 1.2"
#   gem "capistrano-passenger", "~> 0.2.0"
#   gem "capistrano-yarn"
# #   #Add this if you"re using rbenv
#   gem "capistrano-rbenv", "~> 2.1"
# end

group :development do
  gem 'capistrano', '~> 3.7', '>= 3.7.1'
  gem 'capistrano-rails', '~> 1.2'
  gem 'capistrano-passenger', '~> 0.2.0'

  # Add this if you're using rbenv
  gem 'capistrano-rbenv', '~> 2.1'

  # Add this if you're using rvm
  # gem 'capistrano-rvm'
end

gem 'puma'
# =============== Authentication Gems ===============
gem 'devise', '~> 4.6', '>= 4.6.1'
gem 'cancancan', '~> 2.3'
gem 'acts_as_votable', '~> 0.12.0'
gem 'friendly_id', '~> 5.2.4' # Note: You MUST use 5.0.0 or greater for Rails 4.0+

# =============== Assets Related Gems ===============
gem 'jquery-rails'
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# ================ APIs Related Gems ================
gem 'jbuilder', '~> 2.5'
gem "chartkick"
gem 'groupdate'

# ============ Action Cable Related Gems ============
# gem 'redis', '~> 4.0'
group :development do
  gem 'brakeman'
end
# =============== Images Related Gems ===============
gem 'ckeditor'
gem 'paperclip'
gem 'rails_12factor', group: :production
gem "wysiwyg-rails"
gem 'carrierwave'
group :development do
  gem 'rails_db', '2.0.4'
end
gem 'mini_magick'
# =============== Development & Test ================
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
  gem 'faker', '~> 1.9', '>= 1.9.3'
end

# ===================== Testing =====================
group :test do
  gem 'capybara', '~> 3.14'
  gem 'database_cleaner', '~> 1.7'
  gem 'shoulda-matchers', '~> 4.0', '>= 4.0.1'
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.4'
end

# =================== Development ===================
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rails-erd', '~> 1.5', '>= 1.5.2'
end
