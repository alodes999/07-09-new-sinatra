get "/home" do
  erb :"home/home"
end

get "/list" do
  @product = Product.all
  @menu_name = "List"
  erb :"home/select"
end

get "/list_product_input" do
  @product_to_view = Product.find(params["product"]["id"])
  erb :'list/list'
end

get "/add" do
  erb :"add/add"
end

get "/product_add_to_database" do
  add_hash = params["product"]
  if Product.add_with_name_val(add_hash)
    erb :"add/addsuccess"
  else
    erb :'add/addfail'
  end
end

get "/change" do
  @product = Product.all
  @menu_name = "Change"
  erb :"home/select"
end

get "/change_product_input" do
  @product = Product.find(params["product"]["id"])
  erb :"change/change"
end

get "/product_change_in_database" do
  product = Product.find(params["product"]["id"])
  product.name = params["product"]["name"]
  product.general_info = params["product"]["general_info"]
  product.technical_specs = params["product"]["technical_specs"]
  product.where_to_buy = params["product"]["where_to_buy"]
  
  product.save
  erb :"change/changesuccess"
end

get "/delete" do
  @product = Product.all
  @menu_name = "Delete"
  erb :"home/select"
end

get "/delete_product_input" do
  Product.delete(params["product"]["id"])
  erb :"delete/delete"
end