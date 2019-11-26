Rails.application.routes.draw do
  get 'home/index'
  get 'home/becomeguide'
  devise_for :users
  root to: "home#index"
  get 'home/indexguest'
  get 'home/searchguest'
  get 'trip/new'
  get 'home/searchuser'
  get 'trip/show'
  post '/trip', to: 'trip#create', as: :trips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
