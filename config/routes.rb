Gpslogger::Application.routes.draw do
  resources :locations
  get "map" => "mapper#public"
  get "map/public" => "mapper#public"
  root :to => 'mapper#public'
end
