Gpslogger::Application.routes.draw do
  devise_for :users

  resources :locations

  get "map" => "mapper#public"
  get "map/public" => "mapper#public"

  get "home/index"

  root :to => 'home#index'
end
