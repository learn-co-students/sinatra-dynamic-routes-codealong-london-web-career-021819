require_relative 'config/environment'

class App < Sinatra::Base

  # Sample static route.
  get '/hello' do
    "Hello World!"
  end

  # Sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    @n1 = Integer(params[:num1])
    @n2 = Integer(params[:num2])
    "<h1>#{@n1*@n2}</h1>"
  end


end
