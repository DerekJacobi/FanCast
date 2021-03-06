Rails.application.routes.draw do
  resources :follow_teams
  resources :follows
  resources :broadcasts
  resources :users

  resource :session, only: [:new, :create, :destroy]


  root to: 'users#new'

  get 'home' => 'welcome#home'

  get 'games' => 'games#index'

  get 'games/nfl' => 'games#nfl', as: :nfl

  get 'games/nba' => 'games#nba', as: :nba

  get 'games/mlb' => 'games#mlb', as: :mlb

  get 'games/:sport/:team' => 'games#teampage'

  get 'broadcasts/:user_id/schedulebroadcast' => 'broadcasts#schedulebroadcast'

  get 'broadcasts/:user_id/:broadcast_id' => 'broadcasts#broadcasting'

  get 'add/:user_id/:game_id/:away/:home' => 'broadcasts#create'

  match 'auth/:provider/callback', to: 'sessions#createfb', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
