Rails.application.routes.draw do
  resources :requests
  root "books#index"
  get 'books/index'
  get 'books/myreserve', to: 'books#myreserve', as: 'myreserve'
  delete 'books/:id', to: 'books#destroy', as: 'delete'
  post "books/reserve/:id", to: 'books#reserve', as: 'reserve'
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
