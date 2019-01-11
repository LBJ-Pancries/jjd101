Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :jobs do
    resources :resumes
  end
  resources :products do
    member do
      post :add_to_cart
    end
  end
  resources :carts
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
