Rails.application.routes.draw do
  get 'home/index'
  get 'home/becomeguide'
  devise_for :users
  root to: "home#index"
  get 'home/indexguest'
  get 'home/searchguest'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
