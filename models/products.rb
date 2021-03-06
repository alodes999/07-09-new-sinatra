require_relative 'database_class_methods'
require_relative 'database_instance_methods'

class Product
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_reader :id
  attr_accessor :name, :general_info, :technical_specs, :where_to_buy
  # This is the initialize method for Product Objects.  We instantiate a new Object
  # with a Hash corresponding to the column names of the products table.
  # 
  # We have 5 attributes:
  # 
  # id =>  an Integer referring to the row id in our Database
  # name => a String referencing the name column of the products table
  # general_info => a String referring to the general_info column of the products table
  # product_specs => a String referencing the product_specs column of the products table
  # where_to_buy => a String referencing the where_to_buy column of our products table
  def initialize(args)
    @id = args["id"]
    @name = args["name"]
    @general_info = args["general_info"]
    @technical_specs = args["technical_specs"]
    @where_to_buy = args["where_to_buy"]
  end
  
  
  
end