# Start with: shotgun
# Under Windows: rackup  (CTRL+C and restart on each change)

require ::File.expand_path("../lib/boot", __FILE__)
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
