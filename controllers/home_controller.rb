get "/home" do
  erb :"home/home"
end

get "/list" do
  @product = Product.all
  @menu_name = "List"
  erb :"home/select"
end

get "/list_product_input" do
  @product_to_view = Product.find(params["id"])
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
  @product = Product.find(params["id"])
  erb :"change/change"
end

get "/delete" do
  @product = Product.all
  @menu_name = "Delete"
  erb :"home/select"
end

get "/delete_product_input" do
  Product.delete(params["id"])
  erb :"delete/delete"
end