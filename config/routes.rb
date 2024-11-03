Rails.application.routes.draw do
  resources :comments
  resources :news
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations' # Comilla de cierre añadida aquí
  }

  # Define your application routes per el DSL en https://guides.rubyonrails.org/routing.html

  # Muestra el estado de salud de la aplicación en /up (200 si la app arranca sin excepciones, 500 si hay errores).
  get "up" => "rails/health#show", as: :rails_health_check

  # Define la ruta raíz ("/")
  root "home#index"
  get '/comments', to: 'comments#index', as: 'user_root'
end

