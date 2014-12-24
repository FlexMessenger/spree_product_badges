Spree::ProductBadge.destroy_all
Spree::ProductBadge.create!(:badge_type => 'category', :enable_new_badge => true, :enable_sale_badge => false,
                            :enable_out_of_stock_badge => true, :enable_featured_badge => false,
                            :enable_best_selling_badge => true, :new_days => 10, :best_selling_days => 30,
                            :best_selling_products => 10
)

Spree::ProductBadge.create!(:badge_type => 'detail', :enable_new_badge => true, :enable_sale_badge => false,
                            :enable_out_of_stock_badge => true, :enable_featured_badge => false,
                            :enable_best_selling_badge => true, :new_days => 10, :best_selling_days => 30,
                            :best_selling_products => 10
)