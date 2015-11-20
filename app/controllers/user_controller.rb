get "/users" do
  erb :"users/new"
end

post "/users/new" do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    erb :'user/new'
  end
end

delete "/users" do
  session.clear
  redirect '/'
end


get "/users/:id" do
  @user = User.find(params[:id])
  erb :"users/show"
end
