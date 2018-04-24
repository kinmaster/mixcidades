Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  mount Ckeditor::Engine => '/ckeditor'
  resources :jobs
  resources :capacities
  resources :sectors
  resources :classifields
  resources :category_classifieds
  resources :posts
  resources :categories
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
