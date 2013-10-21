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

