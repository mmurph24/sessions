Rails.application.routes.draw do
  get '/clients' => 'clients#index'
  get '/clients/:id' => 'clients#show', as: :client
  get '/clients/new' => 'clients#new'
  post '/clients' => 'clients#create'
  get '/clients/:id/edit' => 'clients#edit', as: :edit_client
  patch '/clients/:id' => 'clients#update'

  get '/sessions/display/:id' => 'sessions#show', as: :session
end
