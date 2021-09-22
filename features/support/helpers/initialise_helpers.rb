module InitialiseHelpers
  class App
    def login_page
      Login.new
    end

    def dashboard
      Dashboard.new
    end
  end
end

Before do
  @app = InitialiseHelpers::App.new
end

World(InitialiseHelpers)
