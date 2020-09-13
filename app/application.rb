# If it's before noon, greet the user with "Good Morning!"

# If it's after noon, greet the user with "Good Afternoon!". 

class Application

    def call(env)
        resp = Rack::Response.new
        # if the time now is <= 11
        if Time.now.hour <= 11
            resp.write Time.now.hour
            resp.write "Good Morning!"
        # else if time is 12 or after
        else
            resp.write Time.now.hour
            resp.write "Good Afternoon!"
        end
        resp.finish
    end

end