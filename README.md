# Bookmark Manager

## Getting Database setup

1. Connect to psql
2. Create the database(db) using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the db using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
5. Install [TablePlus](https://tableplus.com/)
6. Create Database for bookmark_manager_test & CREATE TABLE bookmarks;

## Add Title Column added to dev db
1. Connect to psql in terminal
2. Connect to the db, ie \c bookmark_manager; (to connect to the nnecessary db)
3. Use **ALTER TABLE** table_name **ADD COLUMN** new_column_name **VARCHAR(no. of chars e.g 50);**


_User story_
1. Stakeholder
2. Motivation
3. Task

As a user, <br>
So I can identify the bookmarks made, <br>
I would like to view a list bookmarks created. <br>

As a user,  <br>
So I can save some useful links, <br>
I would like to add new bookmarks <br>

As a user,<br>
So I can see what changed <br>
I would like to update my bookmarks<br>

1st attempt of MVC diagram
[![Image from Gyazo](https://i.gyazo.com/6c6affc703c7cca802c1f9b86d28994d.png)](https://gyazo.com/6c6affc703c7cca802c1f9b86d28994d)

- When the user visits the '/bookmarks' (client) path, their browser sends a request to a controller(app).
- When the controller(app) gets the request, it asks the Bookmark class to give it all the bookmarks, i.e. the controller asks for Bookmark.all.
- The Bookmark **class** goes and gets the bookmarks(in the lib folder), and gives back all the bookmarks in an array to the controller.
- The **controller** renders the array of bookmarks to a webpage, which it sends as a response to the user