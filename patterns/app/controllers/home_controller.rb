class HomeController < ApplicationController
  def index
    # response.write "HomeController"
    render :index # renders app/views/home/index.erb
  end
end
