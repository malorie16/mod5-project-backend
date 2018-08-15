Rails.application.routes.draw do
      resources :users
      resources :likes
      resources :comments
      resources :panos
      post "/auth", to: 'auth#login'
      get "/current_user", to: 'auth#get_current_user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
