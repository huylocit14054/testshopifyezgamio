Rails.application.config.middleware.use OmniAuth::Builder do
  provider :shopify,
    ShopifyApp.configuration.api_key,
    ShopifyApp.configuration.secret,
    scope: ShopifyApp.configuration.scope
    redirect_uri ="http://testshopifyezgamio.herokuapp.com/auth/shopify/callback/"
end
