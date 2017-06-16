class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @themes = ShopifyAPI::Theme.find(:all)
  end
  def add_to_theme(id)
  		@asset_theme = ShopifyAPI::Assert.find('layout/theme.liquid', :params => {:theme_id => id})
  		@asset_theme.value.sub!("<body class='template-{{ template | split: '.' | first }}'>","<body><p>#{id}</p>")
  		asset.save
  		
  end 
end
