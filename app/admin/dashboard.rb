ActiveAdmin.register_page "Dashboard" do
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Products" do
          table_for Product.order("id desc").limit(5) do
            column :id
            column "Product Title" , :title do |post|
              link_to post.title , [:admin,post]
            end

            column :category , :sortable => :category
            column :created_at
          end
          strong (link_to "Show All Products", admin_products_path )
        end
      end
    end
  end
end
