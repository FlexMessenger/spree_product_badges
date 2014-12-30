Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'product_detail_badge',
                     :insert_after => "[data-hook='product_description']",
                     # :partial => "spree/shared/login_bar",
                     :text => '<%= render_badges(@product, :detail) %>',
                     :disabled => false,
                     :original => 'eb3fa668cd98b6a1c75c36420ef1b238a1fc55ac')