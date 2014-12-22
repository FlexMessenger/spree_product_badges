Spree::Core::Engine.routes.draw do

  namespace :admin do
    resource :product_badges
  end

end
