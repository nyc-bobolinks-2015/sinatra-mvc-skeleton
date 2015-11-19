get '/posts' do
    @posts= Post.all
   #  if session[:user_id]
   #   @user = User.find(session[:user_id])
   #  end
     erb :'/posts/index'
end

get '/posts/new' do
  #if session[:user_id]
  erb :"/posts/new"
  # else
  # erb :'404'
end

post '/posts' do
    post = Post.new(params[:posts])
  if post.save
   redirect "/posts/#{post.id}"
  else
   erb :'error_page'
  end
end


get '/posts/:id' do
  @post = Post.find(params[:id])
   erb :'/posts/show'
end



post '/posts/:id/comments' do

end




delete '/posts/:id' do
  @post.destroy
 redirect "/posts"
end




























#

















































# # # route handlers dealing with a specific entry
# # before '/entries/:id' do
# #   find_and_ensure_entry
# # end


# # put '/entries/:id' do
# #   @entry.assign_attributes(params[:entry])

# #   if @entry.save
# #     redirect "entries/#{@entry.id}"
# #   else
# #     @errors = @entry.errors.full_messages
# #     erb :'entries/edit'
# #   end
# # end






