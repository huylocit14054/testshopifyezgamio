class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @theme = ShopifyAPI::Theme.find(:all)
  end
end
