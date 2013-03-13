Flirt::Application.routes.draw do
  root :to => 'subscribers#index'
  resources :subscribers, :only => [:index, :new, :create]
  get '/login' => 'session#new'
  post '/login' => 'session#create'

end
