ProjectFood::Application.routes.draw do

match 'auth/:singly/callback', to: 'sessions#create'
match 'auth/failure', to: redirect('/')
match 'signout', to: 'sessions#destroy', as: 'signout'

resources :meals, only: [:index, :show]

resources :users, except: [:index] do
  resources :meals
end

resources :sessions

root :to => 'meals#index'

end
