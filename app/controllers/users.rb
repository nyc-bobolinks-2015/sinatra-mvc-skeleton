get '/users' do
   @users= User.all
    if session[:user_id]
     @user = User.find(session[:user_id])
    end
     erb :'/users/index'
end


get 'users/:id/comments' do
  find_and_ensure_entry

  if session[:user_id]
    erb :'/comments/index'
  else
    erb :'error_page'
  end
end

