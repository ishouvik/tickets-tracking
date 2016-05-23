Rails.application.routes.draw do

  use_doorkeeper
  root to: 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/about_us'
  get 'static_pages/contact_us'
  devise_for :users

  scope 'tickets' do
    resources :ticket_categories, path: 'categories', only: [:index, :show]
    resources :ticket_items,      path: '/'
  end

  namespace :admin do
    get 'dashboard', to: 'dashboard#index', as: :dashboard
    resources :users

    scope 'tickets' do
      resources :ticket_categories, path: 'categories'
      resources :ticket_items,      path: '/',     except: [:new, :create]
    end
  end
end
