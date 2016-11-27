class HomeController < ApplicationController
  # HomeController.before_action :header
  before_action :header
  after_action :footer

  def index
    # response.write "HomeController"
    @message = "love"
    render :index # renders app/views/home/index.erb
  end

  def header
    response.write "<h1>my app</h1>"
  end

  def footer
    response.write "<h5>&copy; Roy 2016</h5>"
  end
end
