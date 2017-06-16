Rails.application.routes.draw do
  root :to => 'home#index'

	 match "home/:id/add_to_theme" => "home#index" , :via => :post
	 
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
