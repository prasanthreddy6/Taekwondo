Rails.application.routes.draw do

match 'attendances/all/edit' => 'attendances#edit_all', :as => :edit_all, :via => :get
match 'attendances/all' => 'attendances#update_all', :as => :update_all, :via => :put

  get '/about' => 'home#author'
  
  get 'profiles/profileview' =>'profiles#profileview'
  
  resources :profiles
     
  get 'adminprofile/champs' => 'adminprofile#champs'

  get 'adminprofile/studentbelts' => 'adminprofile#studentbelts'

  get 'adminprofile/profile' => 'adminprofile#profile'

  get 'adminprofile/listofstudents' => 'adminprofile#listofstudents'

  get 'adminprofile/newbatch' => 'adminprofile#newbatch'

  get 'adminprofile/selectbatch' => 'adminprofile#selectbatch'

  devise_for :users, controllers: {registrations: 'users/registrations'}
  
#  get '/home' => 'home#homepage'

  root 'home#homepage'

  resources :attendances
  resources :beltgradings
  resources :events
  resources :championships
  

  post 'activatestudent' => "adminprofile#activatestudent"

  devise_scope :user do get '/users/sign_out' => 'devise/sessions#destroy'
  end  

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
