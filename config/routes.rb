Rails.application.routes.draw do
  root :to => 'home#index'
  match 'home/:id/add_to_theme' => 'home#add_to_theme', :via => [:post] , as: :home_add_to_theme
  
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
