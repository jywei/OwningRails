require "action_controller"
require "application_controller"
require "active_record"
require "router"
# require "config/routes"

class Application
  def call(env)
    request = Rack::Request.new(env)
    response = Rack::Response.new

    controller_name, action_name = route(request.path_info) #[hone, index]

    controller_class = load_controller_class(controller_name) # HomeController
    controller = controller_class.new
    controller.request = request
    controller.response = response
    controller.process(action_name)

    response.finish
  end

  def route(path)
    # path = "/home/index" => ["home", "index"]
    _, controller, action = path.split("/") # => ["", "home", "index"] _ : ignore the first part
    [controller || "home", action || "index"] #provide default value
    # Routes.recognize(path)
  end

  def load_controller_class(name)
    # name => "home" => "HomeController" => HomeController
    require "#{name}_controller"
    Object.const_get name.capitalize + "Controller" # HomeController
  end
end
