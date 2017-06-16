class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @themes = ShopifyAPI::Theme.find(:all)
  end
  def add_to_theme(id)
  		@asset_theme = ShopifyAPI::Assert.find('layout/theme.liquid', :params => {:theme_id => id})
  		@asset_theme.value.sub!("<body>","<body><p>#{id}</p>")
  		asset.save
  		redirect_to "https://test-store-ezgamio.myshopify.com/admin/themes/#{id}?key=layout/theme.liquid"
  end 
end
