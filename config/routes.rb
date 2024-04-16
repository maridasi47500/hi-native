Rails.application.routes.draw do
  resources :comments
  resources :user_interested_countries
  resources :study_languages
  resources :native_languages
  resources :profiles
  resources :learning_levels
  resources :countries
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  resources :posts
  resources :demandes, path: "demande" do
    member do
      get "1truc", as: :_1truc, action: :_1truc
    end
  end
  resources :languages
  root 'welcome#index'
  get "demande", to: "welcome#demande"
  get "search", to: "welcome#search"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
