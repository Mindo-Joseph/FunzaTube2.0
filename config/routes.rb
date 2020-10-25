Rails.application.routes.draw do
  get 'sessions/show'
  resources :subjects
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/sessions', to: 'sessions#show'
  post '/sessions', to: 'sessions#show', as: :sessions_show
end
