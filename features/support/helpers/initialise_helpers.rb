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

World(InitialiseHelpers)