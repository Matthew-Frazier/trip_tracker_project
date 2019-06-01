Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  root "trips#index"

  resources :trips do
    resources :locations

  end

  resources :locations do
    resources :addresses
  end
>>>>>>> ac1df02ed3879d01f6b5ba3f527fcd9f300b0a85
end
