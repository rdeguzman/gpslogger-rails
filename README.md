gpslogger-rails
===============

Rails backend for gpslogger

## Prerequisites
- rvm 1.23.10 (stable)
- ruby1.9.3-p362
- rails4.0.0
- postgresql 9.3
- rspec 2.14

## Development

```
% git clone https://github.com/rdeguzman/gpslogger-rails.git
% cd gpslogger-rails
% bundle install -V
% rake rails:update:bin         # Use the new Rails 4 executables
      create  bin
      create  bin/bundle
      create  bin/rails
      create  bin/rake
% bundle binstubs rspec-core #so it can be run via bin/rspec
% rake db:setup
% rspec .
```

In Rails 4, your app's bin/ directory contains executables that are versioned
like any other source code, rather than stubs that are generated on demand.

Here's how to upgrade:

```
  bundle config --delete bin    # Turn off Bundler's stub generator
  rake rails:update:bin         # Use the new Rails 4 executables
  git add bin                   # Add bin/ to source control
```

You may need to remove bin/ from your .gitignore as well.

When you install a gem whose executable you want to use in your app,
generate it and add it to source control:

```
  bundle binstubs some-gem-name
```  

## Application Config
Rails loads the application configuration from *config/config.yml*

```
development:
  version: 0.1
  google_maps_url: 'https://maps.googleapis.com/maps/api/js?v=3.13&key=[YOUR_KEY]&sensor=false'

test:
  version: 0.1
  google_maps_url: 'https://maps.googleapis.com/maps/api/js?v=3.13&key=[YOUR_KEY]&sensor=false'

production  :
  version: 0.1
  google_maps_url: 'https://maps.googleapis.com/maps/api/js?v=3.13&key=[YOUR_KEY]&sensor=false'
```

## Database Backup
```
pg_dump -h robin -U rupert -W gpslogger_production -F custom -f gpslogger.backup gpslogger_production
pg_restore -h localhost -d gpslogger_development -F custom ./gpslogger_production.backup
```

