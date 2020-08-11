Rails.application.routes.draw do
  get 'sessions/new'
  root 'clone_pages#top_page'
  get '/top_page',    to: 'clone_pages#top_page'
  get '/my_page',     to: 'clone_pages#my_page'
  get '/upload_page', to: 'clone_pages#upload_page'
  get '/signup',      to: 'users#new'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  
  get '/users/:id/password_edit',to:'users#password_edit', as: 'password_edit_user'
  patch '/users/:id/password_edit',  to:'users#password_update', as: 'password_update'


end
