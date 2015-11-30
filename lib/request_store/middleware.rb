module RequestStore
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      RequestStore.clear!
      @app.call(env)
    ensure
      RequestStore.clear!
    end
  end
end
