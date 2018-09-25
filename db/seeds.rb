unless IndexedUrl.exists?(url: "https://www.google.com")
  IndexedUrl.create(
    url: "https://www.google.com",
  )
end

unless IndexedUrl.exists?(url: "https://www.duckduckgo.com")
  IndexedUrl.create(
    url: "https://www.duckduckgo.com",
  )
end
