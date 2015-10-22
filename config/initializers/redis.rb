 uri = ENV["REDISTOGO_URL"] || "redis://localhost:6379/"
    REDIS = Redis.new(:url => uri)s = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
end