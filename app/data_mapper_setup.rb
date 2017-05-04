require 'data_mapper'
require 'dm-postgres-adapter'
require "dm-migrations"

require_relative 'models/tag'
require_relative 'models/link'

DataMapper.setup(:default, "postgres://ugvfwtkudnhbxi:d8ee15b2d11c52fa8662de1d09ec98ad09b37791e3732d382817298f249e7160@ec2-54-83-25-217.compute-1.amazonaws.com:5432/dceefoaibgnt6v")
DataMapper.finalize
DataMapper.auto_upgrade!
#|| ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}"
