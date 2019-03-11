class Application

  def call(env)
    resp = Rack::Response.new
    time_hour = Time.now.to_s.split(" ")[1].to_i
    if time_hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end

end
