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

  api_version(:module => "V1", :path => {:value => "api/v1"}, :defaults => {:format => "json"}, :default => true) do
    mount_devise_token_auth_for 'User', at: 'auth'
    scope 'tickets' do
      resources :ticket_categories, path: 'categories'
    end
  end
end
