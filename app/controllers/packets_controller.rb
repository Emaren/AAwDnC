class PacketsController < ApplicationController

#   def index
#     @category_id = Category.find_by(name: params[:category])
#     product_id  = params["packet"]["product_id"]
#     tags        = params["packet"]["tags"] - ['']
#     tags.each do |x|
#       packet    = Packet.create(category_id: category_id, product_id: product_id, tag_id: x)
#
#     end
#     redirect_to admin_packets_path
#   end
#
#   private
#
#   def packet_params
#     params.require(:packet).permit(:category_id, :product_id, :tag_id)
#   end
#
# end
