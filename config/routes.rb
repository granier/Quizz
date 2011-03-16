# -*- coding: utf-8 -*-
Quizz::Application.routes.draw do
  

  get "pages/adminisatration"

  root :to => "pages#home"
  match "/signin", :to => "sessions#new"
  match "/home", :to => "pages#home"
	
  match "/register", :to => "utilisateur#new"
  match "/editaccount", :to => "utilisateur#edit"
  match "/showaccount", :to => "utilisateur#show"

  match "/addcategorie", :to => "categorie#new"
  match "/editcategorie", :to => "categorie#edit"
  match "/listcategorie", :to => "categorie#list"

  match "/addquestionnaire", :to => "questionnaire#new"
  match "/editquestionnaire", :to => "questionnaire#edit"
  match "/listquestionnaire", :to => "questionnaire#list"
  match "/showquestionnaire", :to => "questionnaire#show"
  
  match "/addquestion", :to => "question#new"
  match "/editquestion", :to => "question#edit"
  match "/listquestion", :to => "question#list"
  match "/showquestion", :to => "question#show"

  match "/addreponse", :to => "reponse#new"
  match "/editreponse", :to => "reponse#edit"
  match "/listreponse", :to => "reponse#list"
  match "/showreponse", :to => "reponse#show"

  match "/addscorecategorie", :to => "scorecategorie#new"
  match "/editscorecategorie", :to => "scorecategorie#edit"
  match "/showscorecategorie", :to => "scorecategorie#show"

  match "/addquestionnairefini", :to => "questionnairefini#new"
  match "/listquestionnairefini", :to => "questionnairefini#list"

 # resources :articles

#  resources :utilisateurs

  resources :sessions, :only => [ :new, :create, :destroy]

  resource :utilisateurs, :controller => 'utilisateur' 



  get "questionnairefini/new"

  get "questionnairefini/create"

  get "questionnairefini/show"

  get "scorecategorie/new"

  get "scorecategorie/create"

  get "scorecategorie/edit"

  get "scorecategorie/update"

  get "scorecategorie/show"

  get "reponse/new"

  get "reponse/create"

  get "reponse/edit"

  get "reponse/update"

  get "reponse/show"

  get "reponse/delete"

  get "reponse/destroy"

  get "question/new"

  get "question/create"

  get "question/edit"

  get "question/update"

  get "question/show"

  get "question/list"

  get "question/delete"

  get "question/destroy"

  get "questionnaire/new"

  get "questionnaire/create"

  get "questionnaire/show"

  get "questionnaire/list"

  get "questionnaire/update"

  get "questionnaire/edit"

  get "questionnaire/delete"

  get "questionnaire/destroy"

  get "categorie/new"

  get "categorie/create"

  get "categorie/show"

  get "categorie/index"

  get "categorie/list"

  get "categorie/update"

  get "categorie/edit"

  get "utilisateur/new"

  get "utilisateur/list"

  get "utilisateur/show"

  get "utilisateur/create"

  get "utilisateur/edit"

  get "utilisateur/update"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
