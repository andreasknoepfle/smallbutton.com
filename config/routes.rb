SusyTemplate::Application.routes.draw do
  resources :posts
  resources :sidebar, :only => [:index]
  root :to => 'posts#index'

end
