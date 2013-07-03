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
