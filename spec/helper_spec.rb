require 'spec_helper'
require 'pg'

def truncate
 return unless ENV['ENVIRONMENT'] == 'test'
 DELETE FROM 'bookmarks'
end