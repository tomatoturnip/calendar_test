Rails.application.routes.draw do
  root 'welcome#index'

  namespace :admin do
    root to: 'home#index'

    resources :sermons, except: :show
  end

  devise_for :users

  mount FullcalendarEngine::Engine => "/calendar"
  resources :sermons, except: :show
end
