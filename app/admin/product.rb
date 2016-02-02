ActiveAdmin.register Product do

  permit_params :title, :description, :price, :avatar, :client_id, :category_id, tag_ids: []

  index do
    column "Photo" do |product|
      image_tag product.avatar, :style => "width: 70px"
    end
    column :title
    column :description
    column :price, :sortable => :price do |currency|
      number_to_currency currency.price
    end
    actions
  end


  show do
    attributes_table do
      row :title
      row :description
      row :price
      row :avatar do
        image_tag product.avatar.url, :style => "width: 15%"
      end
      row :client
      row :category

      # row 'Tags', product.tags.each do |tags|
      #   tags.id
      # end

      # product.tags.each do |tags|
      #   row :tags do tags.name
      #   end
      # end

      row 'Tags', only: :show, if: proc { product.tags.any? } do
      table_for product.tags do |t|
        t.column('') { |tag| tag.name } # it's depends what you want to display
      end
      end

    end
    active_admin_comments
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
      f.input :category
      f.input :tag_ids, as: :check_boxes, collection: Tag.all.map { |t| [ t.name, t.id ]}, include_blank: false
    end
    f.actions
  end

end
