module Spree
  module Admin
    class ProductBadgesController < Spree::Admin::BaseController


      def edit
        @badge_types = [:category, :detail]
        @enable_keys = [:enable_new_badge, :enable_sale_badge,
                        :enable_out_of_stock_badge, :enable_featured_badge,
                        :enable_best_selling_badge]
      end

      def update

      end
    end
  end
end