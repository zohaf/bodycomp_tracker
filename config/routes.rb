Rails.application.routes.draw do
  
  
    root :to => 'pages#home'
    resources :users, :only => [:new, :create, :index]
  
    resources :logbooks, :only => [:new, :create, :index]
  
    get '/login' => 'session#new'        # login form

    post '/login' => 'session#create'  # process the login
    root :to => 'logbooks#new'          # processsed to dashbord

    delete '/login' => 'session#destroy' # log out

end
  
