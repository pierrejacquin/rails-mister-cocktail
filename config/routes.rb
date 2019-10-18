Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :cocktails, only: [ :index, :show, :new, :create ] do
  resources :doses, only: [ :new, :create, :destroy ]
end
  root to: 'cocktails#index'
# resources :doses, only: [ :index, :show, :new, :create ]

# resources :ingreditents, only: [ :index, :show, :new, :create ]

end
