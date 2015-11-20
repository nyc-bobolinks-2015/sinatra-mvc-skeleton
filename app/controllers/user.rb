get '/users' do
  erb :'/users/user'
end

post '/users/sign_in' do 
  @user = User.new(username: params[:user][:username])
  @user.password = params[:user] [:pasword_hash]
  if @user.save!
    session[:user_id] = @user_id
    redirect '/posts'
  else
    erb :'error_page'
  end
end

get '/users/sign_in' do
  erb :'/users/sign_in'
end

post '/users' do
  @user = User.find_by(username: params[:user][:username])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/posts"
  else
    erb :'error_page'
  end
end


