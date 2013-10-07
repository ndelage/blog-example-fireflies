get("/users") do
  # erb "app/views/users/index.html.erb"
  erb :index
end

get("/user/:user_id") do
  # erb "users/show.html"
  erb :show
end

post("/users") :foo

class FooController
  def foo
    u = User.new(params[:user])
    u.save

    redirect_to "/users"
  end
end
