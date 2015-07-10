require_relative 'database_class_methods'
require_relative 'database_instance_methods'

class Product
  
  def initialize(args)
    @id = args[id]
    @general_info = args[general_info]
    @product_specs = args[product_specs]
    @where_to_buy = args[where_to_buy]
  end
  
  
  
end