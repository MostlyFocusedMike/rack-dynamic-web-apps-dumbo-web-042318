class Application

  def call(env)
    resp = Rack::Response.new
 
    num_1 = Kernel.rand(1..10)
    num_2 = Kernel.rand(1..10)
    num_3 = Kernel.rand(1..10)
 
    nums = "#{num_1}\n#{num_2}\n#{num_3}\n"

    resp.write "#{nums}" 
    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end

end
