module Rack
  class RackRoll
    def initialize(app)
      @app = app
    end

    def call(env)
      if rand(1000) == 0
        [302, {'Location' => 'http://www.youtube.com/watch?v=dQw4w9WgXcQ'}, []]
      else
        @app.call(env)
      end
    end
  end
end