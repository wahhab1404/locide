Rails.application.routes.draw do
  get 'homes/index'
  devise_for :users
  root to: "homes#index"
  get 'homes/indexguest'
  get 'homes/searchguest'
  get 'trips/new'
  get 'homes/searchuser'
  get 'trips/show'
  get 'homes/guideprofile'
  get 'bookings/new'
  get 'trips/edit'
  get 'homes/aboutus'
  get 'homes/alltrips'
  post '/trips', to: 'trips#create', as: :trips
  post '/bookings', to: 'bookings#create', as: :bookings
  post '/homes', to: 'homes#update', as: :homes
  get 'trips/:id/edit', to: 'trips#edit'
  delete 'trips.:id', to: 'trips#destroy'
  #put '/trip', to: 'trip#update', as: :trips
  resources :bookings, :homes, :trips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
