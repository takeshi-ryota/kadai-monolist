Rails.application.routes.draw do
  
  root to: 'toppages#index'
  
  get 'login' ,to: 'sessions#new'
  post 'login' ,to: 'sessions#create'
  delete 'logout' ,to: 'sessions#destroy'
  
  
  get 'signup',to:'users#new'
  
  
  resources :users,only:[:show,:new,:create]
  
  resources :items,only:[:new,:show]
  resources :ownerships,only:[:create,:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
