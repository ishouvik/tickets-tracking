Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/about_us'
  get 'static_pages/contact_us'
  devise_for :users


  scope module: 'admin', path: '/admin', as: :admin do
    get 'dashboard', to: 'dashboard#index', as: :dashboard
    resources :users
  end
end
