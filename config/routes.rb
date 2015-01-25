Rails.application.routes.draw do
  mount FullcalendarEngine::Engine => "/calendar"
  devise_for :users
  root 'welcome#index'

  namespace :admin do
    resources :sermons, except: :show
    root to: 'home#index'
    resources :users
  end

  namespace :member do
    resources :sermons, except: :show
    root to: 'home#index'
  end
end
