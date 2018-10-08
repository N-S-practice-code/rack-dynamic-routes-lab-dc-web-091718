class Application
 
  @@items = [Song.new("Sorry", "Justin Bieber"),
            Song.new("Hello","Adele")]
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
 
      item_name = req.path.split("/songs/").last #turn /songs/Sorry into Sorry
      item = @@songs.find{|s| s.title == song_title}
 
      resp.write song.artist
    endv
 
    resp.finish
  end
end