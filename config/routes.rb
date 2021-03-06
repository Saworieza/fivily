Rails.application.routes.draw do

  devise_for :users
  root 'items#index'
  get '/my_orders' => 'orders#my_orders', as: 'my_orders'
  get '/all_orders' => 'orders#all_orders', as: 'all_orders'


  resources :items 
   get 'orders/new/:order_id' => 'orders#new', as: :place_order
  resources :orders
  
  get 'expenses/today' => 'expenses#today'
  resources :expenses

#  post 'update_status' => 'orders#update_status', as: 'update_status'
  get 'update_status' => 'orders#update_status', as: 'update_status'
  get 'delete_item' => 'orders#delete_item', as: 'delete_item'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
