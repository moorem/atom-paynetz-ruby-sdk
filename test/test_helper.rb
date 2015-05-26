require './lib/atom/paynetz'
require 'minitest/autorun'
require 'minitest/spec'
require 'base64'
require 'webmock/minitest'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = "test/fixtures"
  c.hook_into :webmock
end