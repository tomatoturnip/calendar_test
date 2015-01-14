Rails.application.routes.draw do
  namespace :admin do
    mount FullcalendarEngine::Engine => "/calendar"
    resources :sermons, except: :show
    root to: 'home#index'
  end

  namespace :member do
    mount FullcalendarEngine::Engine => "/calendar"
    resources :sermons, except: :show
    root to: 'home#index'
  end

  devise_for :users
  root 'welcome#index'
end
