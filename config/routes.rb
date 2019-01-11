Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :jobs do
    resources :resumes
  end
  resources :products
  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
      resources :resumes
    end
    resources :products
  end
end
