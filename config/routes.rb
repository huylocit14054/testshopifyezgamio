Rails.application.routes.draw do
  root :to => 'home#index'

  resources :home do
  	member do
  		post "home/add_to_theme"
  	end
  end
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
