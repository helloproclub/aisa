source 'https://rubygems.org'

ruby '2.5.3'

gem 'rake', '~> 12.3.2'
gem 'hanami', '~> 1.3'
gem 'hanami-model', '~> 1.3'

gem 'pg', '~> 1.1.4'
gem 'bcrypt', '~> 3.1.12'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun', '~> 0.9.2', platforms: :ruby
  gem 'hanami-webconsole', '~> 0.1.0'
end

group :test, :development do
  gem 'dotenv', '~> 2.4'
end

group :test do
  gem 'rspec', '~> 3.8.0'
  gem 'capybara', '~> 3.13.2'
end

group :production do
  # gem 'puma'
end
