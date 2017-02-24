Rails.application.routes.draw do
  resources :other_buildings
  resources :offices
  resources :fire_stations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
