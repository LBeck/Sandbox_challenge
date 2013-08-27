get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @user_input = params[:user_input]
  @radio_button = params[:group1] 
  @checkbox = params[:checkbox_ex]
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @user_input = params[:user_input]
  @dropdown = params[:mydropdown]
  @post_price = params[:post][:price]
  puts "@post_price : #{@post_price}"
  erb :post_cool_url
end