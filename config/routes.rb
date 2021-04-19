Rails.application.routes.draw do
  root 'companies#index'
  # resources :companies
  resources :companies do
    member do
      get 'up'
      get 'down'
      get 'remove_img'
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
