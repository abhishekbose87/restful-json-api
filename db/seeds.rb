unless IndexedUrl.exists?(url: "www.google.com")
  IndexedUrl.create(
    url: "www.google.com",
    headers: {
      h1: ["Header 1 content"],
      h2: ["Header 2 content"],
      h3: ["Header 3 content"]
    },
    links: {
      content: ["Anchor text 1", "Anchor text 2"]
    }
  )
end

unless IndexedUrl.exists?(url: "www.duckduckgo.com")
  IndexedUrl.create(
    url: "www.duckduckgo.com",
    headers: {
      h1: ["Header 1 content", "Duckduckgo content"],
      h2: ["Header 2 content"],
      h3: ["Header 3 content"]
    },
    links: {
      content: ["Anchor text 1", "Anchor text 2"]
    }
  )
end
