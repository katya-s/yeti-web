# frozen_string_literal: true

require 'active_record'
require 'http_logger'
require 'pgq'
require 'active_resource'
require 'active_support/core_ext/string'
require 'active_resource/persistent'
require 'syslog-logger'
require File.join(File.dirname(__FILE__), '../lib/json_coder')
require File.join(File.dirname(__FILE__), '../lib/shutdown')
require File.join(File.dirname(__FILE__), '../lib/amqp_factory')

require 'webmock/rspec'
require 'bunny-mock'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
