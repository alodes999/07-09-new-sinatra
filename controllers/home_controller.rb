get "/home" do
  erb :"home/home"
end

get "/list" do
  erb :"list/list"
end

get "/add" do
  erb :"add/add"
end

get "/change" do
  erb :"change/change"
end

get "/delete" do
  erb :"delete/delete"
end
