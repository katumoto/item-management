Rails.application.routes.draw do
  root to: 'items#index'
  resources :users, only: [:index, :new, :create]
  resources :items, only: [:index, :new, :create, :edit, :update, :destroy] do
      # resources :image do
      # end
  end
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
