# require "action_controller"
# require "application_controller"

# # class Object
# #   def const_missing(name)
# #     name # :User => "user"
# #     require name.to_s.downcase
# #   end
# # end

# class Application
#   def call(env)
#     request = Rack::Request.new(env)
#     response = Rack::Response.new

#     controller_name, action_name = route(request.path_info) #/home/index => ["home", "index"]
#     # response.write "Hi"

#     controller_class = load_controller_class(controller_name)
#     controller = controller_class.new  #HomeController.new
#     controller.request = request
#     controller.response = response
#     controller.process action_name #call controller.index

#     response.finish

#     # [200, {}, ["Hi"]]
#   end

#   def route(path)
#     _, controller_name, action_name = path.split("/")
#     [controller_name || "home", action_name || "index"]
#   end

#   def load_controller_class(name)
#     # "home" => HomeController
#     require "#{name}_controller" #shouldn't do this inside in class in production
#     Object.const_get name.capitalize + "Controller"    #the root of ruby namespace "HomeController"
#   end
# end
