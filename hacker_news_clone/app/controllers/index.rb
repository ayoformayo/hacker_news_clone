enable 'sessions'

get '/' do
  # Look in app/views/index.erb
  @users = User.all
  @posts = Post.all
  @comments = Comment.all
  erb :index
end


get '/user/:user_id' do
  @user = User.find(params[:user_id])
erb :user
end

get '/user/:user_id/posts' do
  @user = User.find(params[:user_id])
  @posts = @user.posts
  erb :user_posts
end

get '/user/:user_id/comments' do
  @user = User.find(params[:user_id])
  @comments = @user.comments
  erb :user_comments
end

get '/post/:post_id' do
  @post = Post.find(params[:post_id])
  @comments = @post.comments
  erb :post
end

post '/post/' do
  @post = Post.find(params[:postid])
  @comment_content = params[:comment_content]
  Comment.create(content: @comment_content, post_id: @post.id, user_id: session[:user_id])
  string = '/post/'+@post.id.to_s
  redirect string
end

get '/signup' do

erb :signup
end

post '/signup' do
  new_user = User.create(name: params['name'], email: params['email'], password: params['password'])
  session[:logged_in] = true
  session[:user_id] = new_user.id
  redirect '/'

end

get '/signout' do
  session.clear
  redirect '/'
end

get '/login' do

  erb :login
end

post '/login' do
  user = User.find_by_name(params[:email])
  p user
  if user.password == params[:password]
    session[:logged_in] =true
    session[:user_id] = user.id 
    redirect '/'
  else
    @message = "Wrong Combo, old sport"
  end
end
