# Start with: shotgun
# Under Windows: rackup  (CTRL+C and restart on each change)

# require ::File.expand_path("../lib/boot", __FILE__)
# require "application"

# run Application.new

class App
  def call(env)
    #return the response array
    [
      200,
      { "Content-Type" => "text/plain"},
      # ["body"]
      # [env.inspect]
      [ env["PATH_INFO"] ]
    ]
  end
end

run App.new
