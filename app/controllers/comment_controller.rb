get '/comments/index' do
  @comments = Comment.all
  erb :"comments/index"
end

post '/comments' do
  @post = Post.find(params[:post_id])
  @comments = Commment.new(params[:comment])
  @comments.assign_attributes(:post_id => @post.id)
  @comments.assign_attributes(:user_id => session[:user_id])
  if @article.save
    redirect :"posts/#{post.id}"
  else
    @errors = "We couldn't get that - try again"
    erb :'comments/new'
  end
end
