Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: "home#index"
  get 'home/indexguest'
  get 'home/searchguest'
  get 'trip/new'
  get 'home/searchuser'
  get 'trip/show'
  get 'trip/show'
  get 'home/guideprofile'
  get 'book/new'
  post '/trip', to: 'trip#create', as: :trips
<<<<<<< HEAD
  post '/book', to: 'book#create', as: :books
=======
  post '/home', to: 'home#update', as: :homes
>>>>>>> 18714f66efc5de49c2aaf896b9ab3922cd9b6842
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
