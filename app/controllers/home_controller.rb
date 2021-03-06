class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @themes = ShopifyAPI::Theme.find(:all)
  end
  def add_to_theme
  		id = params[:id]
  		@asset_theme = ShopifyAPI::Asset.find('layout/theme.liquid', :params => {:theme_id => id})
  		@asset_theme.value.sub!("</head>",
  								"#{id}</head>")
  		@asset_theme.save
  		render 'add_to_theme'
  end 
end
