# Listener for our home link and view.
get "/home" do
  erb :"home/home"
end
# Listener for our list link.  Sends the user to the generic
# Select view with the view changed slightly with our set variables.
get "/list" do
  @product = Product.all
  @menu_name = "List"
  erb :"home/select"
end
# Listener for our product view link.  Sends the user to our list page
# where the user can see the Product Info sorted into clickable tabs
get "/list_product_input" do
  @product_to_view = Product.find(params["product"]["id"])
  erb :'list/list'
end
# Listener for our add view and link.  Sends the user to our add product
# page where they can add a new product.  
get "/add" do
  erb :"add/add"
end
# Listener from our add product page.  Checks to see if the product name already exists
# in our DB.  If it does not, it adds it and sends the user to the Success page.  If it does, it sends
# the user to the failure page.
get "/product_add_to_database" do
  add_hash = params["product"]
  if Product.add_with_name_val(add_hash)
    erb :"add/addsuccess"
  else
    erb :'add/addfail'
  end
end
# Listener for our change link.  Sends the user to the generic
# Select view with the view changed slightly with our set variables.
get "/change" do
  @product = Product.all
  @menu_name = "Change"
  erb :"home/select"
end
# Listener from our select product to change form.  Give the user a form to change the information
# of a product in our DB.
get "/change_product_input" do
  @product = Product.find(params["product"]["id"])
  erb :"change/change"
end
# Listener from our change product form.  Finds the Product from our products table and
# returns an Object to modify.  This then sets the attributes of that Product Object to the
# values from the form, and then sends the new values back to the DB to save. Sends the user to
# the changesuccess view.
get "/product_change_in_database" do
  product = Product.find(params["product"]["id"])
  product.name = params["product"]["name"]
  product.general_info = params["product"]["general_info"]
  product.technical_specs = params["product"]["technical_specs"]
  product.where_to_buy = params["product"]["where_to_buy"]
  
  product.save
  erb :"change/changesuccess"
end
# Listener for our delete link.  Sends the user to the generic
# Select view with the view changed slightly with our set variables.
get "/delete" do
  @product = Product.all
  @menu_name = "Delete"
  erb :"home/select"
end
# Listener from our select product to delete view.  Deletes the chosen product from the DB, and
# send the user to the delete successful view.
get "/delete_product_input" do
  Product.delete(params["product"]["id"])
  erb :"delete/delete"
end