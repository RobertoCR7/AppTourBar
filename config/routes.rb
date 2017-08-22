Rails.application.routes.draw do
  
  resources :events
  resources :reservas
  devise_for :users
  resources :promociones
  resources :reservacions
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'

  resources :products
  resources :galeria
  resources :locations
  resources :ofreces do
    resources :reviews, except: [:show, :index]
  end
  resources :eventos
  resources :vestimenta

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get'welcome/index'
  root 'welcome#index'

  get 'bares' => 'welcome#bares'
  get 'userubicacion' => 'welcome#ubicacion'
  get 'usergaleria' => 'welcome#galeria'
  get 'contacto' => 'welcome#contacto'
  get 'informacion' => 'welcome#informacion'
  get 'uservestimenta' => 'welcome#vestimenta'
  get 'userpromociones' => 'welcome#promociones'
  get 'usereventos' => 'welcome#eventos'
  get 'compras' => 'store#index'
  get 'promo' => 'welcome#promo'
  get 'even' => 'events#even'
  get 'userofreces' => 'welcome#ofreces'
  get 'admin' => 'welcome#admin'
  get 'even2' => 'events#even2'
  get 'even3' => 'events#even3'
  get 'userreservacions' => 'welcome#reservas'
  get 'reservar' => 'reservas#reservar'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
