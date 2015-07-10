get "/home" do
  erb :"home/home"
end

get "/list" do
  @product = Product.all
  @menu_name = "List"
  erb :"home/select"
end

get "/list_product_input" do
  
end

get "/add" do
  erb :"add/add"
end

get "/product_add_to_database" do
  add_hash = params["product"]
  if Product.add_with_name_val(add_hash)
    "Success!"
  else
    "That didn't work, Product name already included"
  end
end

get "/change" do
  @product = Product.all
  @menu_name = "Change"
  erb :"home/select"
end

get "/change_product_input" do
  erb :"change/change_form"
end

get "/delete" do
  @product = Product.all
  @menu_name = "Delete"
  erb :"home/select"
end

get "/delete_product_input" do
  
end