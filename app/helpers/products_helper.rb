module ProductsHelper
  def form_title
   @products.new_record? ? "Nuevo Post" : "Modificar Post"
 end
end
