class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @themes = ShopifyAPI::Theme.find(:all)
  end
  def add_to_theme
  		id = params[:id]
  		@asset_theme = ShopifyAPI::Asset.find('Layout/theme.liquid', :params => {:theme_id => id})
  		@asset_theme.value.sub!("<body class='template-{{ template | split: '.' | first }}'>",
  								"<body class='template-{{ template | split: '.' | first }}'<p>#{id}</p>")
  		asset.save
  end 
end
