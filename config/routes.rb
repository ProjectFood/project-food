ProjectFood::Application.routes.draw do

resources :users do 
  resources :meals
end

root :to => 'meals#index'

end
