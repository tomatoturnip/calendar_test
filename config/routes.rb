Rails.application.routes.draw do
  namespace :admin do
    resources :sermons, except: :show
    root to: 'home#index'
    resources :users
  end

  namespace :member do
    resources :sermons, except: :show
    root to: 'home#index'
  end

  mount FullcalendarEngine::Engine => "/calendar"
  devise_for :users
  root 'welcome#index'
end
