Rails.application.routes.draw do
  resources :commercials
  resources :salaries
  resources :cities
  devise_for :users
  resources :event_attachments
  authenticated :user do
    resources :events, as: :authenticated_root
  end

  resources :events
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
