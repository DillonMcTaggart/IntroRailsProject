Rails.application.routes.draw do
  resources :pages, except: [:show]
  get "pages/:permalink" => "pages#permalink", as: "permalink" # using it in ruby: permalink_path
  root to: 'home#index'
  resources :games, only: %i[index show]
  resources :publishers, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
