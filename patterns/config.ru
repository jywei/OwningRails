# Start with: shotgun
# Under Windows: rackup  (CTRL+C and restart on each change)

require ::File.expand_path('../lib/boot',  __FILE__)

# class Logger   #middleware
#   def initialize(app)
#     @app = app
#   end

#   def call
#     puts "Calling " + env["PATH_INFO"]
#     # parse(env['HTTP_COOKIES'])
#     @app.call(env)
#     # status, headers, body = @app.call(env)
#     # xss_detect(body)
#     # [status, headers, body]
#   end
# end

# use Logger

require "application"
run Application.new

# class App
#   def call(env)
#     #return the response array
#     [
#       200,
#       { "Content-Type" => "text/plain"},
#       # ["body"]
#       # [env.inspect]
#       [ env["PATH_INFO"] ]
#     ]
#   end
# end

# run App.new

# my_proc = -> env do
#   [200, {}, ["hi"]]
# end

# run my_proc

# run -> env do
#   method = env["REQUEST_METHOD"]
#   path = enc["PATH_INFO"]
#   if block = Routes[method][path]
#     body = block.call
#     [200, {}, ["body"]]
#   else
#     [404, {}, ["Not Found"]]
#   end
# end

# Routes = {
#   "GET" => {
#     # "path" => block
#   }
# }

# def get(path, &block)
#   Routes["GET"][path] = block
# end

# get "/" do
#   "awesome!"
# end

# get "/hello" do
#   "ok!"
# end
