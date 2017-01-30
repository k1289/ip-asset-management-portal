Rails.application.routes.draw do
  get 'owners/index'

  get 'owners/new'

  get 'ipassets/index'

  get 'ipassets/new'

  get 'ipassets/create'

  get 'ipassets/destroy'
  get 'ipassets/myips/:id' => 'ipassets#myips', as: :myips

  devise_for :users

resources :ipcommittees 
resources :ipassets
resources :owners
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get 'users/sign_in' => 'devise/sessions#new'
  post 'users/sign_in' => 'devise/sessions#create'
  get 'users/password/new'=> 'devise/passwords#new'
  post 'users/password' => 'devise/passwords#create'
  post 'users' => 'devise/registrations#create'
  get 'users/sign_up' => 'devise/registrations#new'
  get "ipcommittees", to: "ipcommittees#show", as: "show"
  get "ipassets/index" , to: "ipassets#index" , as: "view_assets"
  get "validate_ips", to: "ipcommittees#validate_ips"
  post "validate/:id" => "ipassets#validate", as: :validate
  get 'upload_ip' , to: "ipcommittees#upload_ip"
  # You can have the root of your site routed with "root"
   root 'login#check'

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
