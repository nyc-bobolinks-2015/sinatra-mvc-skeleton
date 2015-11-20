get '/comments' do
  erb :'/comments/comments'
end

post '/comments/new/post/:id' do
  @post = Post.find(params[:id])
  @comment = Comment.create!(body: params[:comment][:body], post_id: @post.id)
  redirect "/posts/#{@post.id}"
end




get '/posts/:id/comments' do |id|
  @post = Post.find(id) 
  @comments= @post.comments.where(post_id: @post.id)
     erb :'/comments/index'
end

get '/posts/:id/comments/new' do |id|
   @post = Post.find(id)
   @comments = Comment.where(post_id: id)
     erb :'/comments/new'
end


post '/posts/:id/comments' do  |id|
  @post = Post.find(id)
  @comment = @post.comments.new(params[:comments])
  @comment.user = user_now
  @comments = @post.comments
  
  if @comment.save!
    erb :'/comments/show'
  else
    redirect "/posts/#{@post.id}/comments/new"
  end
end