require 'rails/all'
require 'rails/test_help'

require 'ddtrace'

class Rails3 < Rails::Application
  config.cache_store = :file_store, '/tmp/ddtrace-rb/cache/'
  config.secret_key_base = 'not_so_secret'
  config.active_support.test_order = :random
  config.active_support.deprecation = :stderr
end

require 'contrib/rails/apps/controllers'
Rails3.initialize!
require 'contrib/rails/apps/models'
