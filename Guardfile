guard :rspec, cmd: "bundle exec rspec" do
  require "guard/rspec/dsl"
  dsl = Guard::RSpec::Dsl.new(self)

  # RSpec files
  rspec = dsl.rspec
  watch(rspec.spec_helper) { rspec.spec_dir }
  watch(rspec.spec_support) { rspec.spec_dir }
  watch(rspec.spec_files)

  # Ruby files in lib/
  ruby = dsl.ruby
  dsl.watch_spec_files_for(ruby.lib_files)

  # Rails files
  rails = dsl.rails(view_extensions: %w[erb haml slim])
  dsl.watch_spec_files_for(rails.app_files)
  dsl.watch_spec_files_for(rails.views)

  # Modern controller → spec mapping
  watch(%r{^app/controllers/(.+)_controller\.rb$}) do |m|
    [
      "spec/controllers/#{m[1]}_controller_spec.rb",
      "spec/requests/#{m[1].singularize}_spec.rb",
      "spec/routing/#{m[1]}_routing_spec.rb"
    ]
  end

  # Modern view → request spec
  watch(%r{^app/views/(.+)/}) do |m|
    "spec/requests/#{m[1].singularize}_spec.rb"
  end

  # Rails config changes
  watch(rails.routes)          { "#{rspec.spec_dir}/routing" }
  watch(rails.app_controller)  { "#{rspec.spec_dir}/controllers" }

  # Remove legacy features / acceptance tests (Turnip / Capybara acceptance)
  # because Rails 8 does not use them.
end
