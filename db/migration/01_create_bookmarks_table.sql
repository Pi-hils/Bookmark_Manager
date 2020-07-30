bookmark_manager=# 

CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));


#Adding a new column to db
ALTER TABLE bookmarks ADD COLUMN title TYPE;
;