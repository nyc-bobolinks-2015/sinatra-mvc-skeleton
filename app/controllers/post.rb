# get '/session-viewer' do
#   session.inspect
# end


get '/posts' do
    @posts= Post.all
     erb :'/posts/index'
 end

get '/posts/:id' do
  if sign_in? == false
    redirect :"/users"
  else
    @post = Post.find(params[:id])
   erb :'/posts/show'
  end
end

get '/posts/new' do 
  erb :'/posts/new'
end




#COULD PROBABLY PULL THE METHODS BELOW INTO ANOTHER SET OF HELPERS?




#  else
#    erb :'/posts/error_page'
#  end
# end



# post '/posts' do
#   @user = user_now
#   @new_post = @user.posts.create!(params[:posts])
#     redirect "/posts"
# end

# get '/posts/:id/edit' do |id|
#   @post = Post.find(id)
#   erb :'/posts/edit'
# end


# put '/posts/:id' do |id|
#   @post = Post.find(id)
#   @post.update_attributes(params[:post])
#   erb :'/posts/show'
# end


# delete '/posts/:id' do |id|
#   @post = Post.find(id)
#   @post.destroy
#  redirect "/posts"
# end





























































