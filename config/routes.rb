Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  #  See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # get 'welcome/index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'

  get '/posts/new', to:  'posts#new'
  get '/posts/:id', to:  'posts#show'
  get '/posts', to: 'posts#index'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  # get '/user' => 'user#show'
  # post'/users' => 'user#show'
  # get '/user/:id' => 'user#show'
  # get '/users/new' => 'user#new'
  


  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  # get 'user/update'

  # Example resource route with options:
  resources :users
  resources :posts
end
