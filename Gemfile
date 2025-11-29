source "https://rubygems.org"

ruby "3.3.5"

# Core Rails
gem "rails", "~> 8.1.1"

# Modern asset pipeline (default in Rails 8)
gem "propshaft"

# Database
gem "sqlite3", ">= 2.1"

# Web server
gem "puma", ">= 5.0"

# JavaScript via Importmap (default)
gem "importmap-rails"

# Hotwire
gem "turbo-rails"
gem "stimulus-rails"

# JSON builder
gem "jbuilder"

# Caching + Queues + Cable (Rails 8 defaults)
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Image processing (Active Storage)
gem "image_processing", "~> 1.2"

# Better boot performance
gem "bootsnap", require: false

# Deployment tooling
gem "kamal", require: false

# Puma enhancements
gem "thruster", require: false

# Bootstrap 5 (Rails 8 compatible)
gem "bootstrap", "~> 5.3"

# --- DEVELOPMENT & TEST ---
group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "bundler-audit", require: false
  gem "brakeman", require: false

  # Testing framework
  gem "rspec-rails"
end

group :development do
  gem "web-console"
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rspec", require: false
  gem "rubocop-rails-omakase", require: false
  gem "rubocop-erb", require: false

  # Auto-run tests
  gem "guard"
  gem "guard-rspec"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# Production database
gem "pg"
gem "cssbundling-rails"
gem "bcrypt-ruby"
gem "factory_bot_rails"
gem "faker"
gem "will_paginate", "~> 3.3.0"
gem "bootstrap-will_paginate", "~>1.0.0"
