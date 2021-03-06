Rails.application.routes.draw do
  namespace :workflow do
    get 'item_favorites/new'
  end

  get 'carts/add'

  devise_for :renters, :controllers => { :registrations => "authentication/renters/registrations" }
  devise_scope :renter do
    get '/login', to: 'devise/sessions#new'
    get '/register', to: 'devise/registrations#new'
    get '/password/settings', to: 'authentication/renters/registrations#edit'
    get '/retrieve/password', to: 'devise/passwords#new'
  end
  authenticated :renter do
    root 'pages#index', as: :authenticated_renter_root
  end
  
  devise_for :item_owners, :controllers => { :registrations => "authentication/item_owners/registrations" }
  devise_scope :item_owner do
    get '/io/login', to: 'devise/sessions#new'
    get '/io/register', to: 'devise/registrations#new'
    get '/password/settings', to: 'authentication/item_owners/registrations#edit'
    get '/io/retrieve/password', to: 'devise/passwords#new'
  end
  authenticated :item_owner do
    root 'item_owners/item_owners#dashboard', as: :authenticated_item_owner_root
  end
  
  scope module: 'item_owners' do
    get '/complete-profile', to: 'item_owners#complete_profile', as: 'complete_item_owner_profile'
    get '/io/dashboard', to: 'item_owners#dashboard', as: 'io_dashboard'
    get '/initialize-prf', to: 'item_owners#initialize_prf', as: 'initialize_prf'
    get '/request-pickup', to: 'item_owners#request_pickup'
    post '/submit-pr', to: 'pickup_requests#submit_pr'
    get '/pr-confirmation', to: 'pickup_requests#pr_confirmation'
    
    resources :item_owners
    resources :pickup_requests, only: [:create, :show, :destroy]
    resources :pickup_request_items, only: :create
  end
  
  scope module: 'workflow' do
    resources :inventory_items, :images
    resources :item_orders, only: :destroy
    
    get '/search', to: 'inventory_items#search'
    get '/attach-images', to: 'images#new'
    get '/item/:id/:slug', to: 'inventory_items#show', as: 'show_inventory_item'
    get '/add_to_cart', to: 'carts#add'
    get '/remove_from_cart', to: 'carts#remove'
    get '/cart', to: 'carts#show'
    get '/checkout', to: 'carts#checkout'
    post '/favorite', to: 'item_favorites#create'
  end
  
  get '/browse', to: 'pages#browse'
  get '/brands', to: 'pages#brands'
  get '/popular', to: 'pages#popular'
  get '/new-wish', to: 'pages#new_wish'
  root "pages#index"
end
