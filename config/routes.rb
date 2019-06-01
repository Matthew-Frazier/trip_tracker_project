Rails.application.routes.draw do
  root "static_pages#home"

  devise_for :users

  resources :trips do
    resources :locations

  end

  resources :locations do
    resources :addresses
  end
end
