require 'pg'
require 'spec_helper'

p "Setting up test Database"

def truncate
 connection = PG.connect(dbname: 'bookmark_manager_test')

 #To clear the bookmark table using PSQL Truncate command
 connection.exec("TRUNCATE bookmarks;")
end