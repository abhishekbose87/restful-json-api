# Example of RESTful JSON API

This API is a sample app for exploring the power of `jsonapi-resources` gem.

Currently it has two available endpoints.

1. For retrieving the indexed urls and its saved data
  ```
  curl -X GET \
    http://0.0.0.0:3000/indexed-urls/ \
    -H 'content-type: application/vnd.api+json'
  ```

2. Index a url and save it in a database. If url is already indexed, then update the indexed content.
  ```
  curl -X POST \
    http://localhost:3000/indexed-urls \
    -H 'Content-Type:application/vnd.api+json' \
    -d '{"data": {"type":"indexed_urls", "attributes":{"url": "http://remoteindian.com"} } }'
  ```
