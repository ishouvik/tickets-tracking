Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/about_us'
  get 'static_pages/contact_us'
  devise_for :users
  resources :users
end
