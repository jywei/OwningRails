require "filters"
require "rendering"

module ActionController
  class Metal
    attr_accessor :request, :response

    def process(action_name)
      # action == "index"
      # `send "index"` same as `index`
      send action_name # calls index
    end

    def params
      request.params
    end
  end

  # class Child < Parent
  class Base < Metal
    include Filters
    include Rendering
  end
end
