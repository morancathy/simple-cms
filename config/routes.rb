Rails.application.routes.draw do
  
  #ROOT route   The # isnt telling it to match it like in simple. 
                  #This is telling it which controller and which action
  root 'demo#index'

  resource :users
  post "/login",  to: "users#login"
  # get "/users", to: "users#index"
  # get "/users/:id", to: "users#show"

  #simple route example
  get 'demo/index'
  get 'demo/hello'
  get 'demo/hello_other'
  get 'demo/whitesox'

  
  #default route example (may go away in future versions of rails)
  # get ':controller(/:action(/:id))'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
