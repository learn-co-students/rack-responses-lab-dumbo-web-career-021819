class Application

  def call(env)
    resp = Rack::Response.new
    t = Time.now.strftime("%H%M") #{}"%d/%m/%Y %H:%M"
    t = t.to_i
    if t > 1200
      resp.write "Good Afternoon!"
    elsif t < 1200
      resp.write "Good Morning!"
    end

    resp.finish
  end
end
