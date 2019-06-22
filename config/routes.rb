Rails.application.routes.draw do
  devise_for :users
  resources :contracts
  resource :user
  root 'contracts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :groups
  resources :posts
  resources :companies

  resources :projects do
    resources :contracts
  end

  namespace :account do
    resources :projects
    resources :subprojects
    resources :contracts
    resources :companies
  end

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
    resources :contracts
    resources :products
    resources :groups
    resources :projects
    resources :subprojects
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
