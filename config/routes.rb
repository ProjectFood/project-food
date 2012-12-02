ProjectFood::Application.routes.draw do

resources :users do 
  resources :meals
end

resources :sessions

root :to => 'meals#index'

end
