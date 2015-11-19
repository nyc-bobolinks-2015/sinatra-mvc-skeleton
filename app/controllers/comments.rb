get '/comments' do
   @comments= Comment.all
    # if session[:user_id]
    #  @user = User.find(session[:user_id])
    # end
     erb :'/comments/index'
end


