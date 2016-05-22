Rails.application.routes.draw do

  root to: 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/about_us'
  get 'static_pages/contact_us'
  devise_for :users

  scope 'tickets' do
    resources :ticket_categories, only: [:index, :show], path: 'categories'
  end

  namespace :admin do
    get 'dashboard', to: 'dashboard#index', as: :dashboard
    resources :users

    scope 'tickets' do
      resources :ticket_categories, path: 'categories'
    end
  end
end
