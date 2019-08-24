Rails.application.routes.draw do
  root to: 'users#index'
  resources :users, only: [:index, :new, :create] do
    resources :items, only: [:index, :new, :create, :edit, :update, :destroy] do
      # resources :image do
      # end
    end
  end
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
