@product = Product.all

get "/home" do
  erb :"home/home"
end

get "/list" do
#  @product = Product.all
  @menu_name = "List"
  erb :"select"
end

get "/add" do
  erb :"add/add"
end

get "/product_add_to_database" do
  
end

get "/change" do
  @menu_name = "Change"
  erb :"select"
end

get "/change_product_input" do
  erb :"change/change_form"
end

get "/delete" do
  @menu_name = "Delete"
  erb :"select"
end
