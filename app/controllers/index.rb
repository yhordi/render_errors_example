get '/' do
  @users = User.all
  erb :index
end

post '/users' do
  p session
  user = User.new
  user.username = params[:username]
  user.password = params[:password]
  user.realname = params[:realname]
  if user.invalid?
    @output = user.errors.full_messages
    session["flash"] = @output
    redirect '/'
  else
    user.save
    redirect '/'
  end
end

post '/sessions' do

end