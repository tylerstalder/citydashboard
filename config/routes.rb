Cfadashboard::Application.routes.draw do
  
  match '/auth/:provider/callback' => 'authentications#create'
  resources :settings
  resources :authentications
  devise_for :users, :controllers => {:registrations => 'registrations'}
  root :to => "home#index"

end
