ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "b1bdbfb3b87c7818acc43d730c0c2e9f"
  config.secret = "67815a8a83814cb66fc1c1dbc75962a2"
  config.scope = "read_orders, read_products, read_theme"
  config.embedded_app = true
end
