get '/products' do
  @products = Product.all
  erb :'products/index'
end

get '/products/new' do
  erb :'products/new'
end

get '/products/:id/edit' do
  @product = Product.find(params[:id])
  erb :'products/edit'
end

post '/products/:id' do
  Product.create(name: params[:name],
                 price: params[:price],
                 description: params[:description],
                 color: params[:color])

  redirect '/products'
end

put '/products/:id' do
  @product = Product.find(params[:id])
  @product.update_attributes(name: params[:name],
                             price: params[:price],
                             description: params[:description],
                             color: params[:color])

  redirect '/products'
end

get '/products/:id' do
  @product = Product.find(params[:id])

  erb :'products/show'
end

delete '/products/:id' do
  product = Product.find(params[:id])
  product.destroy

  redirect '/products'
end

get '/categories/:id/products/new' do
  @id= params[:id]
  erb :'products/new'
end
