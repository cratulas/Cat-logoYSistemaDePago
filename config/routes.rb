Rails.application.routes.draw do
  resources :product_fisicals
  resources :product_digitals
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
