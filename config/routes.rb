ProjectFood::Application.routes.draw do

match 'auth/:provider/callback', to: 'sessions#create'
match 'auth/failure', to: redirect('/')
match 'signout', to: 'sessions#destroy', as: 'signout'

# match "auth/:service"          => "auth#service"
# match "auth/:service/callback" => "auth#callback"
# match "logout"                 => "auth#logout"

resources :users do
  resources :meals
end

resources :sessions

root :to => 'meals#index'

end
