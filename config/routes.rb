Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  get 'about/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'flights#index'
  get '/flights', to: 'flights#index'
end
