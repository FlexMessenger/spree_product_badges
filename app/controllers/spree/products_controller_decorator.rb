module Spree
  ProductsController.class_eval do
    helper 'spree/product_badges'
  end
end