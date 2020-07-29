require 'pg'

p "Setting up test Database"

 connection = PG.connect(dbnname: 'bookmark_manager_test')

 #To clear the bookmark table using PSQL Truncate command
 connection.exec("TRUNCATE bookmarks;")