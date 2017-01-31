Rails.application.routes.draw do
  devise_for :users
  get 'articles/index' =>'articles#index'

  get '/index' =>'home#index'


  root'home#index'

resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
