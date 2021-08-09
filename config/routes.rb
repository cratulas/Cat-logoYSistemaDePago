Rails.application.routes.draw do
  get 'carts/update'
  get 'carts/show'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins
  devise_for :users
  root to: "home#index"

  authenticate :admin do
    resources :product_fisicals
    resources :product_digitals
    resources :categories
  end

  resource :cart, only: [:show, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
