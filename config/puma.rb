environment ENV['RAILS_ENV'] || 'production'

daemonize true

pidfile "/var/test/restful-json-api/shared/tmp/pids/puma.pid"
stdout_redirect "/var/test/restful-json-api/shared/tmp/log/stdout", "/var/test/restful-json-api/shared/tmp/log/stderr"

threads 1, 4

bind "unix:///var/test/restful-json-api/shared/tmp/sockets/puma.sock"
