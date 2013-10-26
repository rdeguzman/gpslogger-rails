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
% bundle binstubs rspec-core #so it can be run via bin/rspec
% rake db:setup
% rspec .
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

