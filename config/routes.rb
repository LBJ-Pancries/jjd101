Rails.application.routes.draw do
  devise_for :users
  resource :user
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :groups
  resources :posts

  resources :jobs do
    resources :resumes
  end
  resources :products do
    member do
      post :add_to_cart
    end
  end
  resources :carts do
    collection do
      post :clean
      post :checkout
    end
  end
  namespace :admin do
    resources :groups
    resources :users do
      resource :profile, :controller => "user_profile"
    end
    resources :jobs do
      member do
        post :publish
        post :hide
      end
      resources :resumes
    end
    resources :products
    resources :categories do
      resources :products
    end
  end
  resources :cart_items
  resources :orders
  namespace :account do
    resources :orders
  end
  
  resources :categories do
    resources :products
  end

end
