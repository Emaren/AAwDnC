ActiveAdmin.register Packet do

  permit_params :category_id, :product_id, tag_ids: []

  form do |f|
    f.inputs do
      f.input :category
      f.input :product
      f.input :tags, as: :check_boxes, collection: Tag.all.map { |t| [ t.name, t.id ]}, include_blank: false
    end
    f.actions
  end

  index do
    selectable_column
    column :category
    column :product
    column :tag
    actions
    
  end

  controller do

    def create

      category_id = params["packet"]["category_id"]
      product_id  = params["packet"]["product_id"]
      tags        = params["packet"]["tags"] - ['']
      tags.each do |x|
        packet    = Packet.create(category_id: category_id, product_id: product_id, tag_id: x)

      end
      redirect_to admin_packets_path
    end

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


end
