Flirt::Application.routes.draw do
  root :to => 'subscribers#index'
  resources :subscribers, :only => [:index, :new, :create]

end
