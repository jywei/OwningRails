class HomeController < ApplicationController
  # HomeController.before_action :header
  before_action :header

  def index
    # response.write "HomeController"
    render :index # renders app/views/home/index.erb
  end

  def header
    response.write "<h1>my app</h1>"
  end
end
