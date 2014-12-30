module Spree
  module ProductBadgesHelper

    def render_badges (product, type)
      types = [:category, :detail]
      return unless types.include?(type)

      settings = Spree::ProductBadge.where(:badge_type => type).first
      html = content_tag :div
      suffix = type == :detail ? '-view' : ''
      if settings.enable_new_badge && product.created_at + settings.new_days.days > Time.now
        html << content_tag(:div, nil, class: "fl-badges-new#{suffix}")
      end
      if settings.enable_sale_badge
        html << content_tag(:div, nil, class: "fl-badges-sale#{suffix}")
      end
      if settings.enable_out_of_stock_badge && product.total_on_hand < 3
        html << content_tag(:div, nil, class: "fl-badges-soldout#{suffix}")
      end
      if settings.enable_featured_badge
        html << content_tag(:div, nil, class: "fl-badges-featured#{suffix}")
      end
      if settings.enable_best_selling_badge
        html << content_tag(:div, nil, class: "fl-badges-bestselling#{suffix}")
      end
      html
    end

  end
end