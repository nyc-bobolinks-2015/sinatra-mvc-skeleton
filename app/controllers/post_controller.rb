get '/posts/new' do
  erb :'posts/new'
end

post '/posts' do
  current_user
  @post = @user.posts.new(params[:post])
  if @post.save
    redirect '/'
  else
    erb :'post/new'
  end
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  @post_comments = @post.comments
  erb :"posts/show"
end
