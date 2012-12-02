ProjectFood::Application.routes.draw do

match 'auth/:singly/callback', to: 'sessions#create'
match 'auth/failure', to: redirect('/')
match 'signout', to: 'sessions#destroy', as: 'signout'

resources :users do
  resources :meals
end

resources :sessions

resources :users do 
  resources :meals
end

root :to => 'meals#index'

end
