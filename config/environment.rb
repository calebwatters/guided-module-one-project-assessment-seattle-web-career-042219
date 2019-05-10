require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
require_all 'app'
ActiveRecord::Base.logger = nil
<<<<<<< HEAD
=======

>>>>>>> 3553bd1f1b9b0e540e3c26770cffdf6aec19ce53
