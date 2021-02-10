Rails.application.routes.draw do
  get 'bookings/new'
  post 'bookings/create'
  get 'booking/:id', to: 'bookings#show', as: 'booking'
  get 'about/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'flights#index'
  get '/flights', to: 'flights#index'
end
