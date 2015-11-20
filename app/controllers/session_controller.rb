require 'pry'

get "/sessions" do
  erb :"sessions/new"
end

post "/sessions" do
  user = User.find_by(name: params[:name])
  if user && user.password == params[:password]
    session[:user_id] = user.id
    session[:username] = user.username
    redirect '/'
  else
    @error = "We couldn't find you in our registered users - please sign up"
    erb :"users/new"
  end
end

delete "/sessions" do
  session.clear
  redirect '/'
end
