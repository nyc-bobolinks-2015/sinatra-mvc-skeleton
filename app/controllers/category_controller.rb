get '/categories' do
  @categories = Category.all

  erb :'categories/index'
end

get '/categories/new' do
  erb :'categories/new'
end

get '/categories/:id' do
  @category = Category.find(params[:id])
  @products = @category.products

  erb :'categories/show'
end

post '/categories/:id' do
  Category.create(name: params[:name],
                  description: params[:description])

  redirect '/categories'
end

get '/categories/:id/edit' do
  @category = Category.find(params[:id])

  erb :'categories/edit'
end

put '/categories/:id' do
  category = Category.find(params[:id])
  category.update_attributes(name: params[:name],
                             description: params[:description])

  redirect '/categories'
end


