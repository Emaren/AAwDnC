ActiveAdmin.register Product do

  permit_params :title, :description, :price, :avatar, :client_id

  index do
    column "Photo" do |product|
      image_tag product.avatar, :style => "width: 15%"
    end
    column :title
    column :description
    column :price
    actions
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :price
      f.input :avatar
      f.input :client
    end
    f.actions
  end

end
