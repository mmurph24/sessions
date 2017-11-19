Rails.application.routes.draw do
  get '/' => 'clients#index'
  get '/:id' => 'clients#show', as: :client
  get '/clients/new' => 'clients#new'
  post 'clients' => 'clients#create'

  get 'sessions/:id' => 'sessions#show', as: :session
end
