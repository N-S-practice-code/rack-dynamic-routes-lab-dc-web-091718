class Application
 
  @@items = [Song.new("Sorry", "Justin Bieber"),
            Song.new("Hello","Adele")]
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
 
      item_name = req.path.split("/items/").last 
      item = @@songs.find{|s| s.title == song_title}
      if item
        resp.write song.artist
    else
      resp.write "Route not found"
      resp.status = 404
    end
    
    resp.finish
  end
end