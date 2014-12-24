module Spree
  module Admin
    class ProductBadgesController < Spree::Admin::BaseController

      before_action :load_settings, only: [:edit, :update]

      def edit
        @badge_types = [:category, :detail]
        @enable_keys = [:enable_new_badge, :enable_sale_badge,
                        :enable_out_of_stock_badge, :enable_featured_badge,
                        :enable_best_selling_badge]
      end

      def update
        @category_settings.update!(category_params)
        @detail_settings.update!(detail_params)

        flash[:success] = Spree.t(:successfully_updated, :resource => Spree.t(:product_badges))
        redirect_to edit_admin_product_badges_path
      end

      private
      def load_settings
        @category_settings = Spree::ProductBadge.where(:badge_type => 'category').first
        @detail_settings = Spree::ProductBadge.where(:badge_type => 'detail').first
        @settings = {:category => @category_settings, :detail => @detail_settings}
      end

      def category_params
        params.require(:category).permit(:enable_new_badge, :enable_sale_badge, :enable_out_of_stock_badge, :enable_featured_badge, :enable_best_selling_badge, :new_days, :best_selling_days, :best_selling_products)
      end

      def detail_params
        params.require(:detail).permit(:enable_new_badge, :enable_sale_badge, :enable_out_of_stock_badge, :enable_featured_badge, :enable_best_selling_badge, :new_days, :best_selling_days, :best_selling_products)
      end

    end
  end
end