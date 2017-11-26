Rails.application.routes.draw do
  get '/clients' => 'clients#index'
  get '/clients/new' => 'clients#new'
  get '/clients/:id' => 'clients#show', as: :client
  post '/clients' => 'clients#create'
  get '/clients/:id/edit' => 'clients#edit', as: :edit_client
  patch '/clients/:id' => 'clients#update'

  get '/sessions/new' => 'sessions#new'
  get '/sessions/:id' => 'sessions#show', as: :session
  post '/sessions' => 'sessions#create'
  get '/sessions/:id/edit' => 'sessions#edit', as: :edit_session
  patch '/sessions/:id' => 'sessions#update'
end
