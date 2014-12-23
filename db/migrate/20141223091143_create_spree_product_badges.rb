class CreateSpreeProductBadges < ActiveRecord::Migration
  def change
    create_table :spree_product_badges do |t|
      t.string :badge_type
      t.boolean :enable_new_badge
      t.boolean :enable_sale_badge
      t.boolean :enable_out_of_stock_badge
      t.boolean :enable_featured_badge
      t.boolean :enable_best_selling_badge
      t.integer :new_days
      t.integer :best_selling_days
      t.integer :best_selling_products

      t.timestamps
    end
  end
end
