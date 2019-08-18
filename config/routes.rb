Rails.application.routes.draw do
  root to: 'items#index'
  resources :items, only: [:index, :new, :create, :edit, :update, :destroy] do
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
