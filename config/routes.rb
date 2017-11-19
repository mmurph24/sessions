Rails.application.routes.draw do
  get '/' => 'clients#index'
  get '/:id' => 'clients#show', as: :client
  get 'sessions/:id' => 'sessions#show', as: :session
  get '/clients/new' => 'clients#create'
end
